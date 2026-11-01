.class public final Lg/bgu;
.super Lg/hei;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lg/bkm;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lg/bgu;->a:Landroid/content/Context;

    invoke-direct {p0}, Lg/hei;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lg/abz;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/bgu;->a:Landroid/content/Context;

    iget-object p1, p1, Lg/abz;->zzb:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lg/bkm;->h(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method
