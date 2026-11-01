.class public final synthetic Lg/aeo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dkp;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic d:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    iput p2, p0, Lg/aeo;->b:I

    iput-object p1, p0, Lg/aeo;->d:Landroid/app/Activity;

    iput-object p3, p0, Lg/aeo;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final _ci()Ljava/lang/CharSequence;
    .locals 6

    iget v0, p0, Lg/aeo;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120166

    iget-object v4, p0, Lg/aeo;->a:Ljava/lang/String;

    iget-object v5, p0, Lg/aeo;->d:Landroid/app/Activity;

    packed-switch v0, :pswitch_data_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-virtual {v5, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-virtual {v5, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-virtual {v5, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
