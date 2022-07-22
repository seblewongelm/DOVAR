using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;

namespace Dovar3.Data.Models
{
    [Serializable]
    public class CustomPrincipal : IPrincipal
    {
        private IIdentity _identity;
        public CustomPrincipal(IIdentity identity)
        {
            _identity = identity;
        }
        public IIdentity Identity
        {
            get { return _identity; }
        }

        public bool IsInRole(string role)
        {
            throw new NotImplementedException();
        }
    }
}
