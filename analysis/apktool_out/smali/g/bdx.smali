.class public final Lg/bdx;
.super Lg/gzh;
.source "SourceFile"


# static fields
.field public static final a:Lg/dpd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "application/json; charset=UTF-8"

    sget-object v1, Lg/dpd;->a:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-static {v0}, Lg/acr;->bb(Ljava/lang/String;)Lg/dpd;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lg/bdx;->a:Lg/dpd;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/reflect/Type;)Lg/eya;
    .locals 1

    new-instance p1, Lg/fbc;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lg/fbc;-><init>(I)V

    return-object p1
.end method

.method public final c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lg/daw;)Lg/eya;
    .locals 0

    new-instance p2, Lg/oy;

    invoke-direct {p2, p1}, Lg/oy;-><init>(Ljava/lang/reflect/Type;)V

    return-object p2
.end method
