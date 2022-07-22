using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;

namespace Dovar3.Data.Models
{
    [Serializable]
    public class CustomIdentity : IIdentity
    {
        private readonly UserAccountModel _userAccount;
        public UserAccountModel CurrentUser { get { return _userAccount; } }
        public CustomIdentity(UserAccountModel userAccount)
        {
            _userAccount = userAccount;
        }
        public string AuthenticationType
        {
            get { return "dovarSecurity"; }
        }

        public bool IsAuthenticated
        {
            get { return true; }
        }

        public string Name
        {
            get { return _userAccount.UserName; }
        }

      
    }
}
