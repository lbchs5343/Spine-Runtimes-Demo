.class public final Lg/ffu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {p3}, Lg/ckd;->bf(Ljava/lang/String;)V

    iput-object p1, p0, Lg/ffu;->c:Ljava/lang/String;

    iput-object p2, p0, Lg/ffu;->d:Ljava/lang/String;

    iput-object p3, p0, Lg/ffu;->e:Ljava/lang/String;

    iput-wide p4, p0, Lg/ffu;->a:J

    iput-object p6, p0, Lg/ffu;->b:Ljava/lang/Object;

    return-void
.end method
