.class public final Lg/asb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/edw;
.implements Lg/fzw;


# static fields
.field public static final a:Lg/asb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/asb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/asb;->a:Lg/asb;

    return-void
.end method


# virtual methods
.method public final _ch(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final getParent()Lg/dta;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
