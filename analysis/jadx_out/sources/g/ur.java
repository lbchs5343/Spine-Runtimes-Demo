package g;

import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class ur implements Closeable {
    public final qp aa;
    public final csu ae;
    public final boolean ah;
    public File aj;
    public final cvp am;
    public final boolean an;
    public final boolean ao;
    public final ArrayList ap;
    public afa aq;
    public final String au;

    /* renamed from: e, reason: collision with root package name */
    public final etc f20120e;

    /* renamed from: f, reason: collision with root package name */
    public final HashSet f20121f;
    public final ao i;
    public final fnc n;
    public final dyx o;
    public final HashMap q;
    public final EnumSet r;
    public File s;
    public final int u;
    public final String x;
    public File z;

    /* renamed from: b, reason: collision with root package name */
    public static final dba f20116b = dsr.k(ur.class);

    /* renamed from: c, reason: collision with root package name */
    public static final int f20117c = Math.max(1, Math.min(3, Runtime.getRuntime().availableProcessors() / 2));

    /* renamed from: a, reason: collision with root package name */
    public static final String f20115a = System.lineSeparator();
    public ArrayList ad = new ArrayList(1);

    /* renamed from: ab, reason: collision with root package name */
    public etc f20118ab = new etc(2);
    public etc at = new etc(0);
    public final gpn j = new gpn(1);

    /* renamed from: d, reason: collision with root package name */
    public int f20119d = f20117c;
    public final boolean ai = true;
    public final boolean p = true;
    public final boolean v = true;
    public final boolean t = true;
    public final boolean as = true;
    public final boolean ak = true;
    public final boolean m = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f20122g = false;
    public boolean ar = false;
    public ry ac = null;
    public final cfs y = cfs.READ;
    public final ftv h = ftv.NEVER;
    public final int w = 10;
    public final cgz l = cgz.READ;
    public final cax al = cax.AUTO;
    public final int ag = he.UNDEFINED_ITEM_ID;
    public final List k = ewt.f16293a;
    public final bli af = new bli(0);

    public ur() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new daj());
        ewt ewtVar = new ewt();
        new HashSet();
        new HashSet();
        arrayList.add(ewtVar);
        arrayList.add(new daj());
        arrayList.add(new daj());
        daj dajVar = new daj();
        new HashSet();
        arrayList.add(dajVar);
        arrayList.add(new cuf(0));
        new acq(arrayList);
        this.an = true;
        this.ah = true;
        this.r = EnumSet.allOf(ffl.class);
        this.o = dyx.JAVA;
        this.aa = qp.AUTO;
        this.x = f20115a;
        this.au = "    ";
        this.aq = afa.INFO;
        this.ae = csu.AUTO;
        this.u = 10;
        this.n = fnc.APPLY;
        this.i = ao.z;
        this.am = new cvp(EnumSet.allOf(nd.class));
        this.ap = new ArrayList();
        this.q = new HashMap();
        this.f20121f = new HashSet();
        this.f20120e = new etc(1);
        this.ao = true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            try {
                this.ad = null;
            } catch (Exception e2) {
                f20116b.l("Failed to close JadxArgs", e2);
            }
        } finally {
            this.f20118ab = null;
            this.at = null;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JadxArgs{inputFiles=");
        sb.append(this.ad);
        sb.append(", outDir=");
        sb.append(this.aj);
        sb.append(", outDirSrc=");
        sb.append(this.s);
        sb.append(", outDirRes=");
        sb.append(this.z);
        sb.append(", threadsCount=");
        sb.append(this.f20119d);
        sb.append(", decompilationMode=");
        sb.append(this.aa);
        sb.append(", showInconsistentCode=false, useImports=");
        sb.append(this.ai);
        sb.append(", skipResources=");
        sb.append(this.f20122g);
        sb.append(", skipSources=");
        sb.append(this.ar);
        sb.append(", includeDependencies=false, userRenamesMappingsPath=null, userRenamesMappingsMode=");
        sb.append(this.y);
        sb.append(", deobfuscationOn=false, generatedRenamesMappingFile=null, generatedRenamesMappingFileMode=");
        sb.append(this.l);
        sb.append(", resourceNameSource=");
        sb.append(this.al);
        sb.append(", useSourceNameAsClassNameAlias=");
        sb.append(this.h);
        sb.append(", sourceNameRepeatLimit=");
        sb.append(this.w);
        sb.append(", useKotlinMethodsForVarNames=");
        sb.append(this.n);
        sb.append(", insertDebugLines=false, extractFinally=");
        sb.append(this.v);
        sb.append(", deobfuscationMinLength=0, deobfuscationMaxLength=");
        sb.append(this.ag);
        sb.append(", deobfuscationWhitelist=");
        sb.append(this.k);
        sb.append(", escapeUnicode=false, replaceConsts=");
        sb.append(this.an);
        sb.append(", restoreSwitchOverString=");
        sb.append(this.ah);
        sb.append(", respectBytecodeAccModifiers=false, exportGradleType=null, skipXmlPrettyPrint=false, fsCaseSensitive=false, renameFlags=");
        sb.append(this.r);
        sb.append(", outputFormat=");
        sb.append(this.o);
        sb.append(", commentsLevel=");
        sb.append(this.aq);
        sb.append(", codeCache=");
        sb.append(this.f20118ab);
        sb.append(", codeWriter=");
        this.j.getClass();
        sb.append(new flc(this).getClass().getSimpleName());
        sb.append(", useDxInput=false, pluginOptions=");
        sb.append(this.q);
        sb.append(", cfgOutput=false, rawCFGOutput=false, useHeadersForDetectResourceExtensions=false, typeUpdatesLimitCount=");
        return awf.s(sb, this.u, '}');
    }
}
