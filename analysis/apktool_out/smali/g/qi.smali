.class public final synthetic Lg/qi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dkp;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Lg/qi;->a:I

    iput-object p1, p0, Lg/qi;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final _ci()Ljava/lang/CharSequence;
    .locals 6

    iget v0, p0, Lg/qi;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f1200bd

    const v4, 0x7f120165

    iget-object v5, p0, Lg/qi;->b:Landroid/app/Activity;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {v5, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {v5, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
