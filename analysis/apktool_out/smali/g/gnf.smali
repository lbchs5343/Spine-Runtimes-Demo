.class public final Lg/gnf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Landroid/net/Uri;

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lg/gnf;->c:Landroid/net/Uri;

    iput p2, p0, Lg/gnf;->e:I

    iput p3, p0, Lg/gnf;->f:I

    iput-boolean p4, p0, Lg/gnf;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lg/gnf;->b:Ljava/lang/String;

    iput p5, p0, Lg/gnf;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "systemfont"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lg/gnf;->c:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lg/gnf;->e:I

    const/16 v0, 0x190

    iput v0, p0, Lg/gnf;->f:I

    iput-boolean p1, p0, Lg/gnf;->a:Z

    iput-object p2, p0, Lg/gnf;->b:Ljava/lang/String;

    iput p1, p0, Lg/gnf;->d:I

    return-void
.end method
