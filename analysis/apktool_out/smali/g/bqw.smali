.class public final Lg/bqw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/dwm;

.field public final b:I

.field public final c:Lg/vn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/dwm;ILg/jf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/bqw;->a:Lg/dwm;

    iput p3, p0, Lg/bqw;->b:I

    iget-object p1, p4, Lg/jf;->g:Lg/fxb;

    iget-object p1, p1, Lg/fxb;->bd:Lg/fzn;

    new-instance p2, Lg/vn;

    invoke-direct {p2, p1}, Lg/vn;-><init>(Lg/fzn;)V

    iput-object p2, p0, Lg/bqw;->c:Lg/vn;

    return-void
.end method
