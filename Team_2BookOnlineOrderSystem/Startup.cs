using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Team_2BookOnlineOrderSystem.Startup))]
namespace Team_2BookOnlineOrderSystem
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
