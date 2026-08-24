using MudBlazor;

namespace ZerostLanding.Theme;

public static class ZerostTheme
{
    public static MudTheme Instance => new MudTheme
    {
        PaletteLight = new PaletteLight
        {
            Primary = "#5EA614",
            Secondary = "#2563EB",
            Background = "#F5F7FB",
            Surface = "#FFFFFF",
            AppbarBackground = "rgba(255,255,255,0.88)",
            AppbarText = "#0F172A",
            TextPrimary = "#0F172A",
            TextSecondary = "#526071",
            Success = "#22C55E",
            Info = "#2563EB",
            Warning = "#F59E0B",
            Divider = "rgba(15, 23, 42, 0.10)"
        },

        LayoutProperties = new LayoutProperties
        {
            DefaultBorderRadius = "22px"
        }
    };
}