using System.Data.Entity.Infrastructure;
using System.Linq.Expressions;

namespace iDeliverDataAccess.Base
{
    public interface IRepository<T> where T : class
    {
        Task<IEnumerable<T>> GetAll(params Expression<Func<T, object>>[] includes);
        IEnumerable<T> Find(Expression<Func<T, bool>> where, params Expression<Func<T, object>>[] includes);

    }
}