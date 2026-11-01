.class public final Lg/hn;
.super Lg/aij;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Landroid/adservices/topics/TopicsManager;I)V
    .locals 0

    iput p2, p0, Lg/hn;->a:I

    invoke-direct {p0, p1}, Lg/aij;-><init>(Landroid/adservices/topics/TopicsManager;)V

    return-void
.end method


# virtual methods
.method public b(Lg/eph;)Landroid/adservices/topics/GetTopicsRequest;
    .locals 1

    iget v0, p0, Lg/hn;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lg/aij;->b(Lg/eph;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string v0, "request"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg/fvr;->h()Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lg/fvr;->m(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object v0

    iget-boolean p1, p1, Lg/eph;->a:Z

    invoke-static {v0, p1}, Lg/fvr;->x(Landroid/adservices/topics/GetTopicsRequest$Builder;Z)Landroid/adservices/topics/GetTopicsRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Lg/fvr;->a(Landroid/adservices/topics/GetTopicsRequest$Builder;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object p1

    const-string v0, "Builder()\n            .s\u2026ion)\n            .build()"

    invoke-static {p1, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
