namespace MauiApp5;

public partial class MainPage : ContentPage
{
    public MainPage()
    {
        InitializeComponent();
    }
    private async void Member_Click(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MauiApp5.Pages.Member());
    }

    private async void MemberAC_Click(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MauiApp5.Pages.MemberAccess());
    }

    private async void AddClass_Click(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MauiApp5.Pages.AddClass());
    }

    private async void ShowClass_Click(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MauiApp5.Pages.ShowClass());
    }

    private async void Payment_Click(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MauiApp5.Pages.Payment());
    }

    private async void AttShow_Click(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MauiApp5.Pages.AttShow());
    }
    private async void AttAdd_Click(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MauiApp5.Pages.AttAdd());
    }

    private async void Equipment_Click(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MauiApp5.Pages.Equipment());
    }

    private async void Staff_Click(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MauiApp5.Pages.Staff());
    }
}

