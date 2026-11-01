.class public final Lg/bmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gpe;


# instance fields
.field public final b:Lg/amv;


# direct methods
.method public constructor <init>(Lg/amv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bmy;->b:Lg/amv;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lg/amv;
    .locals 1

    iget-object v0, p0, Lg/bmy;->b:Lg/amv;

    return-object v0
.end method
