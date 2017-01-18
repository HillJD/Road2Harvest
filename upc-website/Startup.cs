using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(upc_website.Startup))]
namespace upc_website
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
