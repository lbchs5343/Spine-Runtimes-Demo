.class public final Lg/dwq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lg/byy;

.field public final d:Ljava/util/List;

.field public final e:Lg/fnn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lg/byy;Ljava/util/List;Lg/fnn;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dwq;->c:Lg/byy;

    iput-object p2, p0, Lg/dwq;->d:Ljava/util/List;

    iput-object p3, p0, Lg/dwq;->e:Lg/fnn;

    iput-object p4, p0, Lg/dwq;->b:Ljava/lang/String;

    return-void
.end method
