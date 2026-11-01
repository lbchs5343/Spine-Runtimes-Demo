.class public final Lg/eex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final elements:[Lg/boj;


# direct methods
.method public constructor <init>([Lg/boj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eex;->elements:[Lg/boj;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg/eex;->elements:[Lg/boj;

    array-length v1, v0

    sget-object v2, Lg/cgq;->a:Lg/cgq;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v2, v4}, Lg/boj;->_y(Lg/boj;)Lg/boj;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
