.class public final Lg/rn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lg/gc;


# direct methods
.method public constructor <init>(Lg/gc;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/rn;->b:Lg/gc;

    iput-object p2, p0, Lg/rn;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    iget-object v0, p0, Lg/rn;->a:Landroid/content/Context;

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v1, 0x7f12056b

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lg/rn;->b:Lg/gc;

    invoke-static {v0}, Lg/gc;->c(Lg/gc;)Landroid/webkit/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lg/gc;->c(Lg/gc;)Landroid/webkit/DownloadListener;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-interface/range {v2 .. v8}, Landroid/webkit/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
