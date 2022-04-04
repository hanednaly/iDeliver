using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace iDeliverDataAccess.Base
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private DbContext _context;
        private DbSet<T> _objectSet;

        public DbContext Context
        {
            get
            {
                return _context;
            }
        }

        public DbSet<T> ObjectSet
        {
            get
            {
                return _objectSet ?? (_objectSet = this.Context.Set<T>());

            }
            private set { _objectSet = value; }
        }

        public Repository(DbContext context, DbSet<T> objectSet)
        {
            _context = context;
            _objectSet = objectSet;
        }

        #region Public Methods
        public virtual void Add(T entity)
        {
            this.ObjectSet.Add(entity);
        }

        public virtual void Delete(T entity)
        {
            this.ObjectSet.Attach(entity);
            this.ObjectSet.Remove(entity);
        }

        public virtual void Update(T entity)
        {
            Context.Entry(entity).State = EntityState.Modified;
        }

        public virtual IEnumerable<T> Find(Expression<Func<T, bool>> where, params Expression<Func<T, object>>[] includes)
        {
            IQueryable<T> queryable;
            queryable = GetQueryObject(includes).Where<T>(where);
            return queryable;
        }

        public virtual async Task<IEnumerable<T>> GetAll(params Expression<Func<T, object>>[] includes) =>
            await GetQueryObject(includes).ToListAsync();
        #endregion

        #region Private Methods
        protected DbQuery<T> GetQueryObject(Expression<Func<T, object>>[] includes)
        {
            string path;
            DbQuery<T> query = ObjectSet as DbQuery<T>;
            if (includes.Count() > 0)
            {
                foreach (Expression<Func<T, object>> expression in includes)
                {
                    path = GetPath(expression);
                    query = query.Include(path);
                }
            }
            return query;
        }

        private string GetPath(Expression exp)
        {
            switch (exp.NodeType)
            {
                case ExpressionType.MemberAccess:
                    var name = GetPath(((MemberExpression)exp).Expression) ?? "";

                    if (name.Length > 0)
                        name += ".";
                    return name + ((MemberExpression)exp).Member.Name;
                case ExpressionType.Call:
                    string CompositeName = "";
                    foreach (var arg in ((MethodCallExpression)exp).Arguments)
                    {
                        CompositeName += GetPath(arg);
                        if (CompositeName.Length > 0)
                            CompositeName += ".";
                    }
                    return CompositeName.TrimEnd(char.Parse("."));
                case ExpressionType.Convert:
                case ExpressionType.Quote:
                    return GetPath(((UnaryExpression)exp).Operand);
                case ExpressionType.Lambda:
                    return GetPath(((LambdaExpression)exp).Body);
                default:
                    return "";
            }
        }
        #endregion
    }
}
