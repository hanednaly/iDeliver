using System.Security.Cryptography;
using System.Text;

namespace iDeliverService.Common
{
    public class HashKey
    {
        public static void CreateMD5Hash(string input, out string hash)
        {
            // Step 1, calculate MD5 hash from input
            using (MD5 md5 = MD5.Create()) 
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                // Step 2, convert byte array to hex string
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                hash = sb.ToString();
            }
        }

        public static bool VerifyMD5Hash(string input, string hash)
        {
            CreateMD5Hash(input, out string output);
            return hash == output;
        }

        public static void CreateMD5Hash(string input, out byte[] hash, out byte[] salt)
        {
            using (var hmac = new HMACMD5())
            {
                salt = hmac.Key;
                hash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(input));
            }
        }

        public static bool VerifyMD5Hash(string input, byte[] hash, byte[] salt)
        {
            using (var hmac = new HMACMD5(salt))
            {
                var computedHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(input));
                return computedHash.SequenceEqual(hash);
            }
        }
    }
}