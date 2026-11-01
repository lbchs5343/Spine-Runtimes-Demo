.class public final Lg/nq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/fov;

.field public b:Lg/fov;

.field public final c:Ljava/lang/String;

.field public d:Lg/agx;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;

.field public g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/nq;->f:Ljava/util/List;

    const-class v0, Lg/bsi;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    const-string v0, "dex-input.verify-checksum"

    iput-object v0, p0, Lg/nq;->c:Ljava/lang/String;

    return-void
.end method
