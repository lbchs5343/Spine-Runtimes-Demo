.class public final synthetic Lg/aur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lg/dm;


# direct methods
.method public synthetic constructor <init>(Lg/dm;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lg/aur;->b:I

    iput-object p1, p0, Lg/aur;->c:Lg/dm;

    iput-object p2, p0, Lg/aur;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/aur;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aur;->c:Lg/dm;

    iget-object v0, v0, Lg/dm;->c:Ljava/lang/Object;

    check-cast v0, Lg/ad;

    iget-object v0, v0, Lg/ad;->i:Landroid/webkit/WebView;

    iget-object v1, p0, Lg/aur;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/aur;->c:Lg/dm;

    iget-object v0, v0, Lg/dm;->c:Ljava/lang/Object;

    check-cast v0, Lg/ad;

    iget-object v0, v0, Lg/ad;->i:Landroid/webkit/WebView;

    iget-object v1, p0, Lg/aur;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
