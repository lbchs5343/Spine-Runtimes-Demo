.class public final Landroidx/fragment/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/s;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mCurrentMaxLifecycleStates:[I

.field final mFragmentWhos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOldMaxLifecycleStates:[I

.field final mOps:[I

.field final mReorderingAllowed:Z

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Landroidx/fragment/app/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/s;->mOps:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/s;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/s;->mOldMaxLifecycleStates:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/s;->mCurrentMaxLifecycleStates:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/s;->mTransition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/s;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/s;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/s;->mBreadCrumbTitleRes:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroidx/fragment/app/s;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/fragment/app/s;->mBreadCrumbShortTitleRes:I

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/s;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/s;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/s;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/s;->mReorderingAllowed:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/j;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/s;->mOps:[I

    iget-boolean v1, p1, Lg/den;->w:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/s;->mFragmentWhos:Ljava/util/ArrayList;

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/s;->mOldMaxLifecycleStates:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/s;->mCurrentMaxLifecycleStates:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fzt;

    iget-object v4, p0, Landroidx/fragment/app/s;->mOps:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lg/fzt;->d:I

    aput v6, v4, v2

    iget-object v4, p0, Landroidx/fragment/app/s;->mFragmentWhos:Ljava/util/ArrayList;

    iget-object v6, v3, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/fragment/app/s;->mOps:[I

    add-int/lit8 v6, v2, 0x2

    iget-boolean v7, v3, Lg/fzt;->h:Z

    aput v7, v4, v5

    add-int/lit8 v5, v2, 0x3

    iget v7, v3, Lg/fzt;->b:I

    aput v7, v4, v6

    add-int/lit8 v6, v2, 0x4

    iget v7, v3, Lg/fzt;->c:I

    aput v7, v4, v5

    add-int/lit8 v5, v2, 0x5

    iget v7, v3, Lg/fzt;->e:I

    aput v7, v4, v6

    add-int/lit8 v2, v2, 0x6

    iget v6, v3, Lg/fzt;->i:I

    aput v6, v4, v5

    iget-object v4, p0, Landroidx/fragment/app/s;->mOldMaxLifecycleStates:[I

    iget-object v5, v3, Lg/fzt;->a:Lg/fqv;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v5, v4, v1

    iget-object v4, p0, Landroidx/fragment/app/s;->mCurrentMaxLifecycleStates:[I

    iget-object v3, v3, Lg/fzt;->f:Lg/fqv;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lg/den;->q:I

    iput v0, p0, Landroidx/fragment/app/s;->mTransition:I

    iget-object v0, p1, Lg/den;->i:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/s;->mName:Ljava/lang/String;

    iget v0, p1, Landroidx/fragment/app/j;->c:I

    iput v0, p0, Landroidx/fragment/app/s;->mIndex:I

    iget v0, p1, Lg/den;->s:I

    iput v0, p0, Landroidx/fragment/app/s;->mBreadCrumbTitleRes:I

    iget-object v0, p1, Lg/den;->u:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/s;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iget v0, p1, Lg/den;->j:I

    iput v0, p0, Landroidx/fragment/app/s;->mBreadCrumbShortTitleRes:I

    iget-object v0, p1, Lg/den;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/s;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iget-object v0, p1, Lg/den;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/s;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v0, p1, Lg/den;->l:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/s;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-boolean p1, p1, Lg/den;->k:Z

    iput-boolean p1, p0, Landroidx/fragment/app/s;->mReorderingAllowed:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fillInBackStackRecord(Landroidx/fragment/app/j;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/s;->mOps:[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_2

    new-instance v4, Lg/fzt;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v6, v1, 0x1

    aget v3, v3, v1

    iput v3, v4, Lg/fzt;->d:I

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v3, p0, Landroidx/fragment/app/s;->mOps:[I

    aget v3, v3, v6

    :cond_0
    invoke-static {}, Lg/fqv;->values()[Lg/fqv;

    move-result-object v3

    iget-object v7, p0, Landroidx/fragment/app/s;->mOldMaxLifecycleStates:[I

    aget v7, v7, v2

    aget-object v3, v3, v7

    iput-object v3, v4, Lg/fzt;->a:Lg/fqv;

    invoke-static {}, Lg/fqv;->values()[Lg/fqv;

    move-result-object v3

    iget-object v7, p0, Landroidx/fragment/app/s;->mCurrentMaxLifecycleStates:[I

    aget v7, v7, v2

    aget-object v3, v3, v7

    iput-object v3, v4, Lg/fzt;->f:Lg/fqv;

    iget-object v3, p0, Landroidx/fragment/app/s;->mOps:[I

    add-int/lit8 v7, v1, 0x2

    aget v6, v3, v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v4, Lg/fzt;->h:Z

    add-int/lit8 v5, v1, 0x3

    aget v6, v3, v7

    iput v6, v4, Lg/fzt;->b:I

    add-int/lit8 v7, v1, 0x4

    aget v5, v3, v5

    iput v5, v4, Lg/fzt;->c:I

    add-int/lit8 v8, v1, 0x5

    aget v7, v3, v7

    iput v7, v4, Lg/fzt;->e:I

    add-int/lit8 v1, v1, 0x6

    aget v3, v3, v8

    iput v3, v4, Lg/fzt;->i:I

    iput v6, p1, Lg/den;->t:I

    iput v5, p1, Lg/den;->v:I

    iput v7, p1, Lg/den;->m:I

    iput v3, p1, Lg/den;->o:I

    invoke-virtual {p1, v4}, Lg/den;->x(Lg/fzt;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/fragment/app/s;->mTransition:I

    iput v0, p1, Lg/den;->q:I

    iget-object v0, p0, Landroidx/fragment/app/s;->mName:Ljava/lang/String;

    iput-object v0, p1, Lg/den;->i:Ljava/lang/String;

    iput-boolean v5, p1, Lg/den;->w:Z

    iget v0, p0, Landroidx/fragment/app/s;->mBreadCrumbTitleRes:I

    iput v0, p1, Lg/den;->s:I

    iget-object v0, p0, Landroidx/fragment/app/s;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v0, p1, Lg/den;->u:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/fragment/app/s;->mBreadCrumbShortTitleRes:I

    iput v0, p1, Lg/den;->j:I

    iget-object v0, p0, Landroidx/fragment/app/s;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v0, p1, Lg/den;->n:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/fragment/app/s;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v0, p1, Lg/den;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/s;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v0, p1, Lg/den;->l:Ljava/util/ArrayList;

    iget-boolean v0, p0, Landroidx/fragment/app/s;->mReorderingAllowed:Z

    iput-boolean v0, p1, Lg/den;->k:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroidx/fragment/app/v;)Landroidx/fragment/app/j;
    .locals 5

    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0, p1}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/v;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/s;->fillInBackStackRecord(Landroidx/fragment/app/j;)V

    iget v1, p0, Landroidx/fragment/app/s;->mIndex:I

    iput v1, v0, Landroidx/fragment/app/j;->c:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/s;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/s;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fzt;

    iget-object v4, p1, Landroidx/fragment/app/v;->ah:Landroidx/fragment/app/e;

    invoke-virtual {v4, v2}, Landroidx/fragment/app/e;->k(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iput-object v2, v3, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->d(I)V

    return-object v0
.end method

.method public instantiate(Landroidx/fragment/app/v;Ljava/util/Map;)Landroidx/fragment/app/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/v;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Landroidx/fragment/app/j;"
        }
    .end annotation

    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0, p1}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/v;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/s;->fillInBackStackRecord(Landroidx/fragment/app/j;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/s;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/s;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lg/den;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fzt;

    iput-object v2, v1, Lg/fzt;->g:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Restoring FragmentTransaction "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/s;->mName:Ljava/lang/String;

    const-string v2, " failed due to missing saved state for Fragment ("

    const-string v3, ")"

    invoke-static {p2, v0, v2, v1, v3}, Lg/awf;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroidx/fragment/app/s;->mOps:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Landroidx/fragment/app/s;->mFragmentWhos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroidx/fragment/app/s;->mOldMaxLifecycleStates:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Landroidx/fragment/app/s;->mCurrentMaxLifecycleStates:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroidx/fragment/app/s;->mTransition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/s;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/s;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/fragment/app/s;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/s;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Landroidx/fragment/app/s;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/s;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroidx/fragment/app/s;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Landroidx/fragment/app/s;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Landroidx/fragment/app/s;->mReorderingAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
