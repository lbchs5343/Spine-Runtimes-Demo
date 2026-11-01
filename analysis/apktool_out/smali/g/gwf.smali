.class public final Lg/gwf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lg/fc;

.field public c:Z

.field public d:Z

.field public e:Lg/efx;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Lg/cwz;

.field public i:Lg/emr;

.field public j:Lg/cwq;

.field public k:Lg/dgx;


# virtual methods
.method public final l(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lg/gwf;->f:Ljava/lang/String;

    iget v0, p0, Lg/gwf;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/gwf;->a:I

    iget-object v1, p0, Lg/gwf;->h:Lg/cwz;

    iget-boolean v2, p0, Lg/gwf;->c:Z

    new-instance v3, Lg/ja;

    invoke-direct {v3, p0, v2, p1}, Lg/ja;-><init>(Lg/gwf;ZLjava/lang/String;)V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    new-instance v5, Lg/byq;

    invoke-direct {v5, p0, p1, v4, v2}, Lg/byq;-><init>(Lg/gwf;Ljava/lang/String;ZLjava/text/Collator;)V

    new-instance p1, Lg/ev;

    invoke-direct {p1, v0, p0}, Lg/ev;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3, v5, p1}, Lg/haz;->ad(Lg/bsx;Lg/byq;Lg/bwb;)V

    return-void
.end method
