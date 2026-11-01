.class public abstract Lg/ghs;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public final w:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lg/ghs;->w:Ljava/util/LinkedHashSet;

    return-void
.end method
