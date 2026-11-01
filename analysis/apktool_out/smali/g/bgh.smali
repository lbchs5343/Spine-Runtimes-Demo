.class public abstract Lg/bgh;
.super Ljava/lang/Object;


# instance fields
.field protected d:Lg/dlv;

.field protected dq:Lg/eyj;

.field protected ia:Landroid/content/Context;

.field protected iw:Ljava/lang/String;

.field protected mn:Ljava/lang/String;

.field protected ox:Lg/csh;

.field protected p:Lg/blw;

.field protected s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bgh;->ia:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dq(Lg/csh;)V
    .locals 0

    iput-object p1, p0, Lg/bgh;->ox:Lg/csh;

    return-void
.end method

.method public dq(Lg/dlv;)V
    .locals 0

    iput-object p1, p0, Lg/bgh;->d:Lg/dlv;

    return-void
.end method

.method public dq(Lg/eyj;)V
    .locals 0

    iput-object p1, p0, Lg/bgh;->dq:Lg/eyj;

    return-void
.end method

.method public varargs abstract dq([Ljava/lang/Object;)Z
.end method

.method public iw()V
    .locals 2

    iget-object v0, p0, Lg/bgh;->ox:Lg/csh;

    iget-object v0, v0, Lg/csh;->a:Lg/blw;

    iput-object v0, p0, Lg/bgh;->p:Lg/blw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lg/blw;->c:Ljava/util/HashMap;

    iput-object v1, p0, Lg/bgh;->s:Ljava/util/Map;

    iget-object v1, v0, Lg/blw;->b:Ljava/lang/String;

    iput-object v1, p0, Lg/bgh;->iw:Ljava/lang/String;

    iget-object v0, v0, Lg/blw;->a:Ljava/lang/String;

    iput-object v0, p0, Lg/bgh;->mn:Ljava/lang/String;

    return-void
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bgh;->iw:Ljava/lang/String;

    return-object v0
.end method
