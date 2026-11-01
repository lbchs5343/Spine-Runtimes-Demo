.class public final Lg/ein;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    move-wide v2, p3

    invoke-direct/range {v0 .. v7}, Lg/ein;-><init>(ZJJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZJJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lg/ein;->c:Ljava/lang/String;

    iput-object p7, p0, Lg/ein;->e:Ljava/lang/String;

    iput-wide p2, p0, Lg/ein;->f:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lg/ein;->a:Z

    iput-boolean p1, p0, Lg/ein;->b:Z

    iput-wide p4, p0, Lg/ein;->d:J

    return-void
.end method
