.class public final Lg/as;
.super Lg/sz;
.source "SourceFile"


# instance fields
.field public final a:Lg/sz;

.field public final b:Lg/dpd;


# direct methods
.method public constructor <init>(Lg/sz;Lg/dpd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/as;->a:Lg/sz;

    iput-object p2, p0, Lg/as;->b:Lg/dpd;

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-object v0, p0, Lg/as;->a:Lg/sz;

    invoke-virtual {v0}, Lg/sz;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Lg/dpd;
    .locals 1

    iget-object v0, p0, Lg/as;->b:Lg/dpd;

    return-object v0
.end method

.method public final e(Lg/cbs;)V
    .locals 1

    iget-object v0, p0, Lg/as;->a:Lg/sz;

    invoke-virtual {v0, p1}, Lg/sz;->e(Lg/cbs;)V

    return-void
.end method
