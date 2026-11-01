.class public final Lg/byj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dvf;


# static fields
.field public static final a:Lg/byj;


# instance fields
.field public final b:Lg/dvf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/byj;

    invoke-direct {v0}, Lg/byj;-><init>()V

    sput-object v0, Lg/byj;->a:Lg/byj;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lg/elo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg/abw;

    invoke-direct {v1, v0}, Lg/abw;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lg/baf;->bh(Lg/dvf;)Lg/dvf;

    move-result-object v0

    iput-object v0, p0, Lg/byj;->b:Lg/dvf;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/byj;->b:Lg/dvf;

    invoke-interface {v0}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/zn;

    return-object v0
.end method
