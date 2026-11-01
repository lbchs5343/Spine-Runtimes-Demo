.class public final Lg/cki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dvf;


# static fields
.field public static final a:Lg/cki;


# instance fields
.field public final b:Lg/dvf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/cki;

    invoke-direct {v0}, Lg/cki;-><init>()V

    sput-object v0, Lg/cki;->a:Lg/cki;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lg/biy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg/abw;

    invoke-direct {v1, v0}, Lg/abw;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lg/baf;->bh(Lg/dvf;)Lg/dvf;

    move-result-object v0

    iput-object v0, p0, Lg/cki;->b:Lg/dvf;

    return-void
.end method


# virtual methods
.method public final c()Lg/bbz;
    .locals 1

    iget-object v0, p0, Lg/cki;->b:Lg/dvf;

    invoke-interface {v0}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/bbz;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/cki;->c()Lg/bbz;

    move-result-object v0

    return-object v0
.end method
