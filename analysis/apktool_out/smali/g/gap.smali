.class public abstract Lg/gap;
.super Ljava/lang/Object;


# instance fields
.field private dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gap;->dq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract dq(Landroid/content/Context;)Lg/dlv;
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gap;->dq:Ljava/lang/String;

    return-object v0
.end method
