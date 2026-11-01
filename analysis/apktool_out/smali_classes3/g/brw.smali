.class public final Lg/brw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/boa;


# static fields
.field public static final a:Lg/fdt;

.field public static final b:Lg/kf;


# instance fields
.field public c:Lg/kf;

.field public volatile d:Lg/boa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/kf;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    sput-object v0, Lg/brw;->b:Lg/kf;

    new-instance v0, Lg/fdt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/fdt;-><init>(I)V

    sput-object v0, Lg/brw;->a:Lg/fdt;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/brw;->d:Lg/boa;

    invoke-interface {v0}, Lg/boa;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
