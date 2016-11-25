using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Road2Harvest.Startup))]
namespace Road2Harvest
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
