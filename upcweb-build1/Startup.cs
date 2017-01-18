using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(upcweb_build1.Startup))]
namespace upcweb_build1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
