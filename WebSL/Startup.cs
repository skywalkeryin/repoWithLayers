using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebSL.Startup))]
namespace WebSL
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
