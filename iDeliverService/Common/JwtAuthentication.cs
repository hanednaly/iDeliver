using IDeliverObjects.DTO;
using IDeliverObjects.Objects;
using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;

namespace iDeliverService.Common
{
    public class JwtAuthentication
    {
        private readonly IConfiguration _configuration;
        public JwtAuthentication(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public string CreateToken(UserDTO user)
        {
            List<string> roles = user.Roles;

            List<Claim> claims = new List<Claim>
            {
                new Claim("ID", user.UserID.ToString()),
                new Claim("Username", user.Username),
                new Claim(ClaimTypes.Role, string.Join(",", roles))
            };

            var securityKey = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(
                _configuration.GetSection("AppSettings:Secret").Value));

            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha512Signature);

            var token = new JwtSecurityToken(
                claims: claims,
                expires: DateTime.UtcNow.AddDays(1),
                signingCredentials: credentials);

            var jwt = new JwtSecurityTokenHandler().WriteToken(token);

            return jwt;
        }
    }
}
