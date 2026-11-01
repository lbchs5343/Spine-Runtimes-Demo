package g;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import android.view.View;
import android.widget.AbsSeekBar;
import androidx.fragment.app.Fragment;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzacd;
import com.google.android.gms.internal.ads.zzacj;
import com.google.android.gms.internal.ads.zzacr;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzaoa;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbqh;
import com.google.android.gms.internal.ads.zzbqq;
import com.google.android.gms.internal.ads.zzbqt;
import com.google.android.gms.internal.ads.zzcnn;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdit;
import com.google.android.gms.internal.ads.zzduy;
import com.google.android.gms.internal.ads.zzdwh;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzeew;
import com.google.android.gms.internal.ads.zzgee;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class akj implements gni, bwb, eeg, dds, bol, btp, dyt, ehn, gon, zzgee {

    /* renamed from: a, reason: collision with root package name */
    public static volatile akj f10382a;

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f10383e = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* renamed from: f, reason: collision with root package name */
    public Object f10384f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f10385g;
    public Object h;

    public akj() {
        this.f10385g = 11;
        this.h = new IdentityHashMap();
        this.f10384f = Executors.newSingleThreadExecutor(new dil(2));
    }

    public /* synthetic */ akj(int i) {
        this.f10385g = i;
    }

    public /* synthetic */ akj(int i, Object obj, Object obj2, boolean z) {
        this.f10385g = i;
        this.f10384f = obj;
        this.h = obj2;
    }

    public akj(Context context, int i) {
        this.f10385g = i;
        switch (i) {
            case 14:
                ckd.k(context);
                Resources resources = context.getResources();
                this.h = resources;
                this.f10384f = resources.getResourcePackageName(cn.trinea.android.developertools.R.string.common_google_play_services_unknown_issue);
                break;
            default:
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(bfc.ad(context, cn.trinea.android.developertools.R.attr.materialCalendarStyle, ebb.class.getCanonicalName()).data, git.aa);
                bfy.ac(context, obtainStyledAttributes.getResourceId(4, 0));
                bfy.ac(context, obtainStyledAttributes.getResourceId(2, 0));
                bfy.ac(context, obtainStyledAttributes.getResourceId(3, 0));
                bfy.ac(context, obtainStyledAttributes.getResourceId(5, 0));
                ColorStateList ai = gs.ai(context, obtainStyledAttributes, 7);
                this.h = bfy.ac(context, obtainStyledAttributes.getResourceId(9, 0));
                bfy.ac(context, obtainStyledAttributes.getResourceId(8, 0));
                this.f10384f = bfy.ac(context, obtainStyledAttributes.getResourceId(10, 0));
                new Paint().setColor(ai.getDefaultColor());
                obtainStyledAttributes.recycle();
                break;
        }
    }

    public akj(AbsSeekBar absSeekBar) {
        this.f10385g = 1;
        this.h = absSeekBar;
    }

    public akj(androidx.fragment.app.v vVar) {
        this.f10385g = 9;
        this.h = new CopyOnWriteArrayList();
        this.f10384f = vVar;
    }

    public akj(zzacj zzacjVar) {
        this.f10385g = 19;
        this.h = zzacjVar;
        this.f10384f = new AtomicBoolean(false);
    }

    public akj(bsh bshVar) {
        this.f10385g = 15;
        this.h = bshVar;
        bqk bqkVar = new bqk();
        bqkVar.f12015c = 0;
        this.f10384f = bqkVar;
    }

    public akj(cmg cmgVar) {
        this.f10385g = 17;
        this.f10384f = cmgVar;
    }

    public /* synthetic */ akj(Object obj, int i, Object obj2) {
        this.f10385g = i;
        this.h = obj;
        this.f10384f = obj2;
    }

    public akj(String str, egh eghVar, bmr bmrVar) {
        this.f10385g = 3;
        this.f10384f = str;
        this.h = eghVar;
    }

    public akj(List list) {
        this.f10385g = 20;
        this.h = list;
        this.f10384f = new zzadx[list.size()];
    }

    private final void an(Throwable th) {
    }

    public static akj j() {
        if (f10382a == null) {
            synchronized (akj.class) {
                try {
                    if (f10382a == null) {
                        f10382a = new akj(0);
                    }
                } finally {
                }
            }
        }
        return f10382a;
    }

    public void aa(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.aa(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void ab(boolean z) {
        androidx.fragment.app.v vVar = (androidx.fragment.app.v) this.f10384f;
        androidx.fragment.app.u uVar = vVar.af.h;
        Fragment fragment = vVar.t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.ab(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // g.gon
    public void ac(ezz ezzVar) {
        switch (this.f10385g) {
            case 23:
                int i = ezzVar.f16447d;
                zzbpm zzbpmVar = (zzbpm) this.h;
                try {
                    String canonicalName = ((dn) this.f10384f).getClass().getCanonicalName();
                    String str = ezzVar.f16448e;
                    agd.c(canonicalName + "failed to load mediation ad: ErrorCode = " + i + ". ErrorMessage = " + str + ". ErrorDomain = " + ezzVar.f16449f);
                    zzbpmVar.zzh(ezzVar.h());
                    zzbpmVar.zzi(i, str);
                    zzbpmVar.zzg(i);
                    break;
                } catch (RemoteException e2) {
                    agd.f("", e2);
                    return;
                }
            case 24:
                int i2 = ezzVar.f16447d;
                zzbpm zzbpmVar2 = (zzbpm) this.h;
                try {
                    String canonicalName2 = ((zzbqh) this.f10384f).f4926c.getClass().getCanonicalName();
                    String str2 = ezzVar.f16448e;
                    agd.c(canonicalName2 + "failed to load mediation ad: ErrorCode = " + i2 + ". ErrorMessage = " + str2 + ". ErrorDomain = " + ezzVar.f16449f);
                    zzbpmVar2.zzh(ezzVar.h());
                    zzbpmVar2.zzi(i2, str2);
                    zzbpmVar2.zzg(i2);
                    break;
                } catch (RemoteException e3) {
                    agd.f("", e3);
                }
            case 25:
                try {
                    ((zzbqt) this.h).zzf(ezzVar.h());
                    break;
                } catch (RemoteException e4) {
                    agd.f("", e4);
                    return;
                }
            default:
                try {
                    ((zzbqq) this.h).zzf(ezzVar.h());
                    break;
                } catch (RemoteException e5) {
                    agd.f("", e5);
                    return;
                }
        }
    }

    public void ad(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.ad(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void ae(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.ae(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public String af(String str) {
        String str2 = (String) this.f10384f;
        Resources resources = (Resources) this.h;
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }

    public void ag(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.ag(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public zzacr ah(Object... objArr) {
        Constructor zza;
        synchronized (((AtomicBoolean) this.f10384f)) {
            if (!((AtomicBoolean) this.f10384f).get()) {
                try {
                    zza = ((zzacj) this.h).zza();
                } catch (ClassNotFoundException unused) {
                    ((AtomicBoolean) this.f10384f).set(true);
                } catch (Exception e2) {
                    throw new RuntimeException("Error instantiating extension", e2);
                }
            }
            zza = null;
        }
        if (zza == null) {
            return null;
        }
        try {
            return (zzacr) zza.newInstance(objArr);
        } catch (Exception e3) {
            throw new IllegalStateException("Unexpected error creating extractor", e3);
        }
    }

    @Override // g.dds
    public void ai() {
        Activity activity = (Activity) this.h;
        if (activity instanceof elf) {
            elf elfVar = (elf) activity;
            String str = ((ert) this.f10384f).q;
            if (str == null) {
                elfVar.v = null;
            } else {
                elfVar.v = str;
                elfVar.x = true;
            }
        }
        fyt.h(activity, new String[]{"android.permission.READ_PHONE_STATE"}, 100);
    }

    public void aj(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzadx[] zzadxVarArr = (zzadx[]) this.f10384f;
        for (int i = 0; i < zzadxVarArr.length; i++) {
            zzaoaVar.zzc();
            zzadx zzw = zzacuVar.zzw(zzaoaVar.zza(), 3);
            zzad zzadVar = (zzad) ((List) this.h).get(i);
            String str = zzadVar.zzo;
            boolean z = true;
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                z = false;
            }
            zzdb.zze(z, "Invalid closed caption MIME type provided: ".concat(String.valueOf(str)));
            zzab zzabVar = new zzab();
            zzabVar.zzL(zzaoaVar.zzb());
            zzabVar.zzZ(str);
            zzabVar.zzab(zzadVar.zze);
            zzabVar.zzP(zzadVar.zzd);
            zzabVar.zzx(zzadVar.zzH);
            zzabVar.zzM(zzadVar.zzr);
            zzw.zzl(zzabVar.zzaf());
            zzadxVarArr[i] = zzw;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable ak(Drawable drawable, boolean z) {
        if (drawable instanceof ai) {
            brt brtVar = (brt) ((ai) drawable);
            Drawable drawable2 = brtVar.h;
            if (drawable2 != null) {
                brtVar.p(ak(drawable2, z));
                return drawable;
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    drawableArr[i] = ak(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                    if (Build.VERSION.SDK_INT >= 23) {
                        id.a(layerDrawable, layerDrawable2, i2);
                    }
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.f10384f) == null) {
                    this.f10384f = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    public void al(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.al(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void am(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.am(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // g.eeg
    public Type b() {
        return (Type) this.h;
    }

    @Override // g.eeg
    public Object c(fdw fdwVar) {
        Executor executor = (Executor) this.f10384f;
        return executor == null ? fdwVar : new guk(executor, fdwVar);
    }

    @Override // g.bwb
    public void d(ArrayList arrayList) {
        ((haz) ((fc) this.f10384f).f16548e).h((String) this.h, 1, arrayList);
    }

    @Override // g.fcc
    public Object get() {
        return new cuc((Context) ((eie) this.h).f15585g, (enp) ((dcq) this.f10384f).get());
    }

    @Override // g.btp
    public void i(x xVar) {
        cdy cdyVar = (cdy) this.f10384f;
        cdy.i(cdyVar, (aoy) this.h);
        fvy fvyVar = cdyVar.f12718d;
        if (fvyVar != null) {
            fvyVar.dismissAllowingStateLoss();
            cdyVar.f12718d = null;
        }
    }

    public View k(int i, int i2, int i3, int i4) {
        bqk bqkVar = (bqk) this.f10384f;
        bsh bshVar = (bsh) this.h;
        int l = bshVar.l();
        int j = bshVar.j();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View h = bshVar.h(i);
            int f2 = bshVar.f(h);
            int m = bshVar.m(h);
            bqkVar.f12016d = l;
            bqkVar.f12017e = j;
            bqkVar.f12013a = f2;
            bqkVar.f12014b = m;
            if (i3 != 0) {
                bqkVar.f12015c = i3;
                if (bqkVar.g()) {
                    return h;
                }
            }
            if (i4 != 0) {
                bqkVar.f12015c = i4;
                if (bqkVar.g()) {
                    view = h;
                }
            }
            i += i5;
        }
        return view;
    }

    @Override // g.ehn
    public dpa l(gey geyVar) {
        dpa dpaVar = (dpa) this.h;
        dpaVar.m((String) this.f10384f, geyVar);
        return dpaVar;
    }

    public void m(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.m(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void n(boolean z) {
        androidx.fragment.app.v vVar = (androidx.fragment.app.v) this.f10384f;
        androidx.fragment.app.u uVar = vVar.af.h;
        Fragment fragment = vVar.t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.n(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // g.btp
    public void o(int i) {
        cdy.h((cdy) this.f10384f, (aoy) this.h, i);
    }

    @Override // g.dyt
    public void onComplete(ci ciVar) {
        ((Map) ((clx) this.f10384f).f13101c).remove((eeo) this.h);
    }

    public synchronized void p(aak aakVar) {
        fdc fdcVar = (fdc) this.h;
        if (fdcVar != null) {
            fdcVar.insert((SQLiteDatabase) this.f10384f, aakVar);
        }
    }

    public void q(long j, zzed zzedVar) {
        if (zzedVar.zzb() < 9) {
            return;
        }
        int zzg = zzedVar.zzg();
        int zzg2 = zzedVar.zzg();
        int zzm = zzedVar.zzm();
        if (zzg == 434 && zzg2 == 1195456820 && zzm == 3) {
            zzacd.zzb(j, zzedVar, (zzadx[]) this.f10384f);
        }
    }

    public boolean r(View view) {
        bqk bqkVar = (bqk) this.f10384f;
        bsh bshVar = (bsh) this.h;
        int l = bshVar.l();
        int j = bshVar.j();
        int f2 = bshVar.f(view);
        int m = bshVar.m(view);
        bqkVar.f12016d = l;
        bqkVar.f12017e = j;
        bqkVar.f12013a = f2;
        bqkVar.f12014b = m;
        bqkVar.f12015c = 24579;
        return bqkVar.g();
    }

    public void s(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.s(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // g.dds
    public void t() {
        Activity activity = (Activity) this.h;
        ert ertVar = (ert) this.f10384f;
        if (ertVar.f16056e) {
            acw.aa(activity);
        }
        fso.y(activity, ertVar.q, "fail_permission_cancel");
    }

    public String toString() {
        switch (this.f10385g) {
            case 16:
                return "Bounds{lower=" + ((oi) this.h) + " upper=" + ((oi) this.f10384f) + "}";
            default:
                return super.toString();
        }
    }

    public void u(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.u(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x022e, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x022e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01ff A[Catch: IOException -> 0x0090, XmlPullParserException -> 0x0093, TryCatch #2 {IOException -> 0x0090, XmlPullParserException -> 0x0093, blocks: (B:19:0x0062, B:27:0x022e, B:28:0x0074, B:29:0x0082, B:38:0x00bf, B:44:0x0086, B:47:0x0096, B:50:0x00a0, B:53:0x00aa, B:56:0x00cd, B:57:0x00d5, B:63:0x0149, B:66:0x0150, B:67:0x0168, B:69:0x016b, B:72:0x0176, B:73:0x018e, B:75:0x0191, B:78:0x019c, B:79:0x01b4, B:81:0x01b7, B:84:0x01c1, B:85:0x01d9, B:87:0x01dc, B:90:0x01e6, B:91:0x01fe, B:92:0x01ff, B:94:0x020c, B:96:0x0219, B:98:0x0222, B:101:0x00da, B:104:0x00e4, B:107:0x00ef, B:110:0x00f8, B:113:0x0103, B:116:0x010d, B:119:0x0117, B:122:0x0121, B:125:0x012b, B:128:0x0135, B:131:0x022b), top: B:18:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x020c A[Catch: IOException -> 0x0090, XmlPullParserException -> 0x0093, TryCatch #2 {IOException -> 0x0090, XmlPullParserException -> 0x0093, blocks: (B:19:0x0062, B:27:0x022e, B:28:0x0074, B:29:0x0082, B:38:0x00bf, B:44:0x0086, B:47:0x0096, B:50:0x00a0, B:53:0x00aa, B:56:0x00cd, B:57:0x00d5, B:63:0x0149, B:66:0x0150, B:67:0x0168, B:69:0x016b, B:72:0x0176, B:73:0x018e, B:75:0x0191, B:78:0x019c, B:79:0x01b4, B:81:0x01b7, B:84:0x01c1, B:85:0x01d9, B:87:0x01dc, B:90:0x01e6, B:91:0x01fe, B:92:0x01ff, B:94:0x020c, B:96:0x0219, B:98:0x0222, B:101:0x00da, B:104:0x00e4, B:107:0x00ef, B:110:0x00f8, B:113:0x0103, B:116:0x010d, B:119:0x0117, B:122:0x0121, B:125:0x012b, B:128:0x0135, B:131:0x022b), top: B:18:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0219 A[Catch: IOException -> 0x0090, XmlPullParserException -> 0x0093, TryCatch #2 {IOException -> 0x0090, XmlPullParserException -> 0x0093, blocks: (B:19:0x0062, B:27:0x022e, B:28:0x0074, B:29:0x0082, B:38:0x00bf, B:44:0x0086, B:47:0x0096, B:50:0x00a0, B:53:0x00aa, B:56:0x00cd, B:57:0x00d5, B:63:0x0149, B:66:0x0150, B:67:0x0168, B:69:0x016b, B:72:0x0176, B:73:0x018e, B:75:0x0191, B:78:0x019c, B:79:0x01b4, B:81:0x01b7, B:84:0x01c1, B:85:0x01d9, B:87:0x01dc, B:90:0x01e6, B:91:0x01fe, B:92:0x01ff, B:94:0x020c, B:96:0x0219, B:98:0x0222, B:101:0x00da, B:104:0x00e4, B:107:0x00ef, B:110:0x00f8, B:113:0x0103, B:116:0x010d, B:119:0x0117, B:122:0x0121, B:125:0x012b, B:128:0x0135, B:131:0x022b), top: B:18:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0222 A[Catch: IOException -> 0x0090, XmlPullParserException -> 0x0093, TryCatch #2 {IOException -> 0x0090, XmlPullParserException -> 0x0093, blocks: (B:19:0x0062, B:27:0x022e, B:28:0x0074, B:29:0x0082, B:38:0x00bf, B:44:0x0086, B:47:0x0096, B:50:0x00a0, B:53:0x00aa, B:56:0x00cd, B:57:0x00d5, B:63:0x0149, B:66:0x0150, B:67:0x0168, B:69:0x016b, B:72:0x0176, B:73:0x018e, B:75:0x0191, B:78:0x019c, B:79:0x01b4, B:81:0x01b7, B:84:0x01c1, B:85:0x01d9, B:87:0x01dc, B:90:0x01e6, B:91:0x01fe, B:92:0x01ff, B:94:0x020c, B:96:0x0219, B:98:0x0222, B:101:0x00da, B:104:0x00e4, B:107:0x00ef, B:110:0x00f8, B:113:0x0103, B:116:0x010d, B:119:0x0117, B:122:0x0121, B:125:0x012b, B:128:0x0135, B:131:0x022b), top: B:18:0x0062 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void v(Context context, XmlResourceParser xmlResourceParser) {
        int eventType;
        djm djmVar;
        char c2;
        ebt ebtVar = new ebt();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlResourceParser.getAttributeName(i);
            String attributeValue = xmlResourceParser.getAttributeValue(i);
            if (attributeName != null && attributeValue != null && TTDownloadField.TT_ID.equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), TTDownloadField.TT_ID, context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                try {
                    eventType = xmlResourceParser.getEventType();
                    djmVar = null;
                } catch (IOException e2) {
                    Log.e("ConstraintSet", "Error parsing XML resource", e2);
                } catch (XmlPullParserException e3) {
                    Log.e("ConstraintSet", "Error parsing XML resource", e3);
                }
                while (eventType != 1) {
                    if (eventType != 0) {
                        char c3 = 3;
                        if (eventType == 2) {
                            String name = xmlResourceParser.getName();
                            switch (name.hashCode()) {
                                case -2025855158:
                                    if (name.equals("Layout")) {
                                        c3 = 6;
                                        switch (c3) {
                                            case 0:
                                                djmVar = ebt.i(context, Xml.asAttributeSet(xmlResourceParser), false);
                                                break;
                                            case 1:
                                                djmVar = ebt.i(context, Xml.asAttributeSet(xmlResourceParser), true);
                                                break;
                                            case 2:
                                                djmVar = ebt.i(context, Xml.asAttributeSet(xmlResourceParser), false);
                                                djmVar.f14279a.z = true;
                                                break;
                                            case 3:
                                                djmVar = ebt.i(context, Xml.asAttributeSet(xmlResourceParser), false);
                                                djmVar.f14279a.f13397f = 1;
                                                break;
                                            case 4:
                                                if (djmVar == null) {
                                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                                }
                                                djmVar.f14283e.e(context, Xml.asAttributeSet(xmlResourceParser));
                                                break;
                                            case 5:
                                                if (djmVar == null) {
                                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                                }
                                                djmVar.f14280b.o(context, Xml.asAttributeSet(xmlResourceParser));
                                                break;
                                            case 6:
                                                if (djmVar == null) {
                                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                                }
                                                djmVar.f14279a.bq(context, Xml.asAttributeSet(xmlResourceParser));
                                                break;
                                            case 7:
                                                if (djmVar == null) {
                                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                                }
                                                djmVar.f14284f.k(context, Xml.asAttributeSet(xmlResourceParser));
                                                break;
                                            case '\b':
                                            case '\t':
                                                if (djmVar == null) {
                                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                                }
                                                frn.h(context, xmlResourceParser, djmVar.f14282d);
                                                break;
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                case -1984451626:
                                    if (name.equals("Motion")) {
                                        c3 = 7;
                                        switch (c3) {
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                case -1962203927:
                                    if (name.equals("ConstraintOverride")) {
                                        c3 = 1;
                                        switch (c3) {
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                case -1269513683:
                                    if (name.equals("PropertySet")) {
                                        c3 = 4;
                                        switch (c3) {
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                case -1238332596:
                                    if (name.equals("Transform")) {
                                        c3 = 5;
                                        switch (c3) {
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                case -71750448:
                                    if (name.equals("Guideline")) {
                                        c3 = 2;
                                        switch (c3) {
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                case 366511058:
                                    if (name.equals("CustomMethod")) {
                                        c3 = '\t';
                                        switch (c3) {
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                case 1331510167:
                                    if (name.equals("Barrier")) {
                                        switch (c3) {
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                case 1791837707:
                                    if (name.equals("CustomAttribute")) {
                                        c3 = '\b';
                                        switch (c3) {
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                case 1803088381:
                                    if (name.equals("Constraint")) {
                                        c3 = 0;
                                        switch (c3) {
                                        }
                                    }
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                                default:
                                    c3 = 65535;
                                    switch (c3) {
                                    }
                            }
                        } else if (eventType == 3) {
                            String lowerCase = xmlResourceParser.getName().toLowerCase(Locale.ROOT);
                            switch (lowerCase.hashCode()) {
                                case -2075718416:
                                    if (lowerCase.equals("guideline")) {
                                        c2 = 3;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -190376483:
                                    if (lowerCase.equals("constraint")) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 426575017:
                                    if (lowerCase.equals("constraintoverride")) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 2146106725:
                                    if (lowerCase.equals("constraintset")) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            if (c2 == 0) {
                                ((SparseArray) this.f10384f).put(identifier, ebtVar);
                                return;
                            } else if (c2 == 1 || c2 == 2 || c2 == 3) {
                                ebtVar.f15258f.put(Integer.valueOf(djmVar.f14281c), djmVar);
                                djmVar = null;
                            }
                        }
                    } else {
                        xmlResourceParser.getName();
                    }
                    eventType = xmlResourceParser.next();
                }
                ((SparseArray) this.f10384f).put(identifier, ebtVar);
                return;
            }
        }
    }

    public void w(AttributeSet attributeSet, int i) {
        AbsSeekBar absSeekBar = (AbsSeekBar) this.h;
        dzh j = dzh.j(absSeekBar.getContext(), attributeSet, f10383e, i);
        Drawable z = j.z(0);
        if (z != null) {
            if (z instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) z;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    Drawable ak = ak(animationDrawable.getFrame(i2), true);
                    ak.setLevel(10000);
                    animationDrawable2.addFrame(ak, animationDrawable.getDuration(i2));
                }
                animationDrawable2.setLevel(10000);
                z = animationDrawable2;
            }
            absSeekBar.setIndeterminateDrawable(z);
        }
        Drawable z2 = j.z(1);
        if (z2 != null) {
            absSeekBar.setProgressDrawable(ak(z2, false));
        }
        j.af();
    }

    public void x(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.x(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void y(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.y(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    public void z(boolean z) {
        Fragment fragment = ((androidx.fragment.app.v) this.f10384f).t;
        if (fragment != null) {
            fragment.getParentFragmentManager().l.z(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.h).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        switch (this.f10385g) {
            case 27:
                zzcnn zzcnnVar = (zzcnn) this.f10384f;
                zzcnnVar.f5381a.zza(zzcnnVar.f5382b.zzd(zzcnnVar.i, zzcnnVar.o, false, (String) this.h, null, zzcnnVar.p()));
                break;
            case 28:
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfl)).booleanValue()) {
                    ti.f20033a.f20034ab.zzv(th, "omid native display exp");
                    break;
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* bridge */ /* synthetic */ void zzb(Object obj) {
        switch (this.f10385g) {
            case 27:
                zzcnn zzcnnVar = (zzcnn) this.f10384f;
                zzcnnVar.f5381a.zza(zzcnnVar.f5382b.zzd(zzcnnVar.i, zzcnnVar.o, false, (String) this.h, (String) obj, zzcnnVar.p()));
                break;
            case 28:
                int i = zzdit.zzc;
                ((zzdit) this.f10384f).ag((View) this.h, (zzeew) obj);
                break;
            default:
                ((zzduy) obj).zze();
                ((zzdwh) this.f10384f).f6603b.zzk((String) this.h);
                break;
        }
    }
}
