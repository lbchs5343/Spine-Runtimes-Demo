.class public final Lg/gzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dvf;


# static fields
.field public static final a:Lg/gzi;


# instance fields
.field public final b:Lg/dvf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/gzi;

    invoke-direct {v0}, Lg/gzi;-><init>()V

    sput-object v0, Lg/gzi;->a:Lg/gzi;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lg/ffo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg/abw;

    invoke-direct {v1, v0}, Lg/abw;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lg/baf;->bh(Lg/dvf;)Lg/dvf;

    move-result-object v0

    iput-object v0, p0, Lg/gzi;->b:Lg/dvf;

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lg/gzi;->a:Lg/gzi;

    iget-object v0, v0, Lg/gzi;->b:Lg/dvf;

    invoke-interface {v0}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/chv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/gzi;->b:Lg/dvf;

    invoke-interface {v0}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/chv;

    return-object v0
.end method
