.class public final Lg/xj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:J

.field public c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/util/TreeMap;

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/xj;->d:Ljava/lang/String;

    iput-object p2, p0, Lg/xj;->g:Ljava/lang/String;

    iput-wide p3, p0, Lg/xj;->h:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lg/xj;->b:J

    iput p5, p0, Lg/xj;->c:I

    iput p6, p0, Lg/xj;->e:I

    iput p7, p0, Lg/xj;->i:I

    iput-object p8, p0, Lg/xj;->a:[I

    iput-object p9, p0, Lg/xj;->f:Ljava/util/TreeMap;

    return-void
.end method
