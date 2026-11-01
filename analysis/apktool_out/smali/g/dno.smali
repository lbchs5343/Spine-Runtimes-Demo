.class public final Lg/dno;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public final synthetic c:Lcom/tencent/bugly/proguard/w;

.field public final d:I

.field public e:I


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/w;)V
    .locals 0

    iput-object p1, p0, Lg/dno;->c:Lcom/tencent/bugly/proguard/w;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lg/dno;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lg/dno;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lg/dno;->e:I

    iget-object v1, p0, Lg/dno;->a:Ljava/lang/String;

    iget-object v2, p0, Lg/dno;->b:[B

    iget-object v3, p0, Lg/dno;->c:Lcom/tencent/bugly/proguard/w;

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/w;ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z

    return-void
.end method
