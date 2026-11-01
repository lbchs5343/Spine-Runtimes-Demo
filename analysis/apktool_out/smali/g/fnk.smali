.class public abstract Lg/fnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fgp;


# static fields
.field public static final d:Ljava/util/HashSet;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lg/fnk;->d:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fnk;->e:Ljava/lang/String;

    iput-object p2, p0, Lg/fnk;->f:Ljava/lang/String;

    sget-object p1, Lg/fnk;->d:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public c()Z
    .locals 2

    sget-object v0, Lg/ejz;->a:Ljava/util/HashSet;

    iget-object v1, p0, Lg/fnk;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->containsFeature(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
