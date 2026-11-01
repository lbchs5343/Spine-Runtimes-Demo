.class public final Lg/ur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Lg/dba;

.field public static final c:I


# instance fields
.field public final aa:Lg/qp;

.field public ab:Lg/etc;

.field public ac:Lg/ry;

.field public ad:Ljava/util/ArrayList;

.field public final ae:Lg/csu;

.field public final af:Lg/bli;

.field public final ag:I

.field public final ah:Z

.field public final ai:Z

.field public aj:Ljava/io/File;

.field public final ak:Z

.field public final al:Lg/cax;

.field public final am:Lg/cvp;

.field public final an:Z

.field public final ao:Z

.field public final ap:Ljava/util/ArrayList;

.field public aq:Lg/afa;

.field public ar:Z

.field public final as:Z

.field public at:Lg/etc;

.field public final au:Ljava/lang/String;

.field public d:I

.field public final e:Lg/etc;

.field public final f:Ljava/util/HashSet;

.field public g:Z

.field public final h:Lg/ftv;

.field public final i:Lg/ao;

.field public final j:Lg/gpn;

.field public final k:Ljava/util/List;

.field public final l:Lg/cgz;

.field public final m:Z

.field public final n:Lg/fnc;

.field public final o:Lg/dyx;

.field public final p:Z

.field public final q:Ljava/util/HashMap;

.field public final r:Ljava/util/EnumSet;

.field public s:Ljava/io/File;

.field public final t:Z

.field public final u:I

.field public final v:Z

.field public final w:I

.field public final x:Ljava/lang/String;

.field public final y:Lg/cfs;

.field public z:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lg/ur;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/ur;->b:Lg/dba;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lg/ur;->c:I

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/ur;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/ur;->ad:Ljava/util/ArrayList;

    new-instance v0, Lg/etc;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lg/etc;-><init>(I)V

    iput-object v0, p0, Lg/ur;->ab:Lg/etc;

    new-instance v0, Lg/etc;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lg/etc;-><init>(I)V

    iput-object v0, p0, Lg/ur;->at:Lg/etc;

    new-instance v0, Lg/gpn;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lg/gpn;-><init>(I)V

    iput-object v0, p0, Lg/ur;->j:Lg/gpn;

    sget v0, Lg/ur;->c:I

    iput v0, p0, Lg/ur;->d:I

    iput-boolean v1, p0, Lg/ur;->ai:Z

    iput-boolean v1, p0, Lg/ur;->p:Z

    iput-boolean v1, p0, Lg/ur;->v:Z

    iput-boolean v1, p0, Lg/ur;->t:Z

    iput-boolean v1, p0, Lg/ur;->as:Z

    iput-boolean v1, p0, Lg/ur;->ak:Z

    iput-boolean v1, p0, Lg/ur;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/ur;->g:Z

    iput-boolean v0, p0, Lg/ur;->ar:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg/ur;->ac:Lg/ry;

    sget-object v0, Lg/cfs;->READ:Lg/cfs;

    iput-object v0, p0, Lg/ur;->y:Lg/cfs;

    sget-object v0, Lg/ftv;->NEVER:Lg/ftv;

    iput-object v0, p0, Lg/ur;->h:Lg/ftv;

    const/16 v0, 0xa

    iput v0, p0, Lg/ur;->w:I

    sget-object v2, Lg/cgz;->READ:Lg/cgz;

    iput-object v2, p0, Lg/ur;->l:Lg/cgz;

    sget-object v2, Lg/cax;->AUTO:Lg/cax;

    iput-object v2, p0, Lg/ur;->al:Lg/cax;

    const v2, 0x7fffffff

    iput v2, p0, Lg/ur;->ag:I

    sget-object v2, Lg/ewt;->a:Ljava/util/List;

    iput-object v2, p0, Lg/ur;->k:Ljava/util/List;

    new-instance v2, Lg/bli;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lg/bli;-><init>(I)V

    iput-object v2, p0, Lg/ur;->af:Lg/bli;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lg/daj;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/ewt;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/daj;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/daj;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/daj;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/cuf;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lg/cuf;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/acq;

    invoke-direct {v3, v2}, Lg/acq;-><init>(Ljava/util/ArrayList;)V

    iput-boolean v1, p0, Lg/ur;->an:Z

    iput-boolean v1, p0, Lg/ur;->ah:Z

    const-class v2, Lg/ffl;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lg/ur;->r:Ljava/util/EnumSet;

    sget-object v2, Lg/dyx;->JAVA:Lg/dyx;

    iput-object v2, p0, Lg/ur;->o:Lg/dyx;

    sget-object v2, Lg/qp;->AUTO:Lg/qp;

    iput-object v2, p0, Lg/ur;->aa:Lg/qp;

    sget-object v2, Lg/ur;->a:Ljava/lang/String;

    iput-object v2, p0, Lg/ur;->x:Ljava/lang/String;

    const-string v2, "    "

    iput-object v2, p0, Lg/ur;->au:Ljava/lang/String;

    sget-object v2, Lg/afa;->INFO:Lg/afa;

    iput-object v2, p0, Lg/ur;->aq:Lg/afa;

    sget-object v2, Lg/csu;->AUTO:Lg/csu;

    iput-object v2, p0, Lg/ur;->ae:Lg/csu;

    iput v0, p0, Lg/ur;->u:I

    sget-object v0, Lg/fnc;->APPLY:Lg/fnc;

    iput-object v0, p0, Lg/ur;->n:Lg/fnc;

    sget-object v0, Lg/ao;->z:Lg/ao;

    iput-object v0, p0, Lg/ur;->i:Lg/ao;

    new-instance v0, Lg/cvp;

    const-class v2, Lg/nd;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/cvp;-><init>(Ljava/util/EnumSet;)V

    iput-object v0, p0, Lg/ur;->am:Lg/cvp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/ur;->ap:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ur;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/ur;->f:Ljava/util/HashSet;

    new-instance v0, Lg/etc;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lg/etc;-><init>(I)V

    iput-object v0, p0, Lg/ur;->e:Lg/etc;

    iput-boolean v1, p0, Lg/ur;->ao:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lg/ur;->ad:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, Lg/ur;->ab:Lg/etc;

    iput-object v0, p0, Lg/ur;->at:Lg/etc;

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lg/ur;->b:Lg/dba;

    const-string v3, "Failed to close JadxArgs"

    invoke-interface {v2, v3, v1}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lg/ur;->ab:Lg/etc;

    iput-object v0, p0, Lg/ur;->at:Lg/etc;

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JadxArgs{inputFiles="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/ur;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->aj:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outDirSrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->s:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outDirRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->z:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threadsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ur;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decompilationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->aa:Lg/qp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showInconsistentCode=false, useImports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/ur;->ai:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skipResources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/ur;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skipSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/ur;->ar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", includeDependencies=false, userRenamesMappingsPath=null, userRenamesMappingsMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->y:Lg/cfs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deobfuscationOn=false, generatedRenamesMappingFile=null, generatedRenamesMappingFileMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->l:Lg/cgz;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceNameSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->al:Lg/cax;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useSourceNameAsClassNameAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->h:Lg/ftv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceNameRepeatLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ur;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useKotlinMethodsForVarNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->n:Lg/fnc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", insertDebugLines=false, extractFinally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/ur;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deobfuscationMinLength=0, deobfuscationMaxLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ur;->ag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deobfuscationWhitelist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", escapeUnicode=false, replaceConsts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/ur;->an:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", restoreSwitchOverString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg/ur;->ah:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", respectBytecodeAccModifiers=false, exportGradleType=null, skipXmlPrettyPrint=false, fsCaseSensitive=false, renameFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->r:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->o:Lg/dyx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commentsLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->aq:Lg/afa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", codeCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->ab:Lg/etc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", codeWriter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->j:Lg/gpn;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/flc;

    invoke-direct {v1, p0}, Lg/flc;-><init>(Lg/ur;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useDxInput=false, pluginOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/ur;->q:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cfgOutput=false, rawCFGOutput=false, useHeadersForDetectResourceExtensions=false, typeUpdatesLimitCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/ur;->u:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lg/awf;->s(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
