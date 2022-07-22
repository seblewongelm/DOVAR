using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dovar3.Data.Models
{
    [Serializable]
    public class UserAccountModel
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Salt { get; set; }
        //public int CurrentLocationId { get; set; }
        //public int CurrentPublicBodyId { get; set; }
        public int PublicbodyId { get; set; }
        public string PublicBody { get; set; }

        public static UserAccountModel GetUserAccountModel(UserAccount userAccount)
        {
            var user = new UserAccountModel();
            user.Id = userAccount.Id;
            user.UserName = userAccount.UserName;
            user.FullName = userAccount.FullName;
            user.Email = userAccount.Email;
            user.Password = userAccount.Password;
            user.Salt = userAccount.Salt;
            user.PublicbodyId = userAccount.PublicbodyId;
            user.PublicBody = userAccount.Publicbody.PublicbodyName;


            return user;
        }
    }
}
