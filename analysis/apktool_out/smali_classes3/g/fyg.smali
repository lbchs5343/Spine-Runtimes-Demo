.class public abstract Lg/fyg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public f:J

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public i:Lg/gfw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fyg;->g:Ljava/lang/String;

    iput-boolean p2, p0, Lg/fyg;->h:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lg/fyg;->f:J

    return-void
.end method


# virtual methods
.method public abstract c()J
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/fyg;->g:Ljava/lang/String;

    return-object v0
.end method
