.class public final Lg/fyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ekr;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# instance fields
.field public final b:Lg/ahy;

.field public final c:Lg/ddc;

.field public final d:Lg/ahe;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lg/cuc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/crh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lg/fyn;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lg/cuc;Lg/ahe;Lg/ahy;Lg/ddc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fyn;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/fyn;->f:Lg/cuc;

    iput-object p3, p0, Lg/fyn;->d:Lg/ahe;

    iput-object p4, p0, Lg/fyn;->b:Lg/ahy;

    iput-object p5, p0, Lg/fyn;->c:Lg/ddc;

    return-void
.end method
