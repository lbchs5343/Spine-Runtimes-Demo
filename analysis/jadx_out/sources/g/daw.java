package g;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbp;
import com.google.android.gms.internal.ads.zzbt;
import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzcta;
import com.google.android.gms.internal.ads.zzcuz;
import com.google.android.gms.internal.ads.zzcvs;
import com.google.android.gms.internal.ads.zzcvw;
import com.google.android.gms.internal.ads.zzdcf;
import com.google.android.gms.internal.ads.zzdgm;
import com.google.android.gms.internal.ads.zzdgn;
import com.google.android.gms.internal.ads.zzdta;
import com.google.android.gms.internal.ads.zzejg;
import com.google.android.gms.internal.ads.zzelb;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfbr;
import com.google.android.gms.internal.ads.zzfco;
import com.google.android.gms.internal.ads.zzfgu;
import com.google.android.gms.internal.ads.zzfwn;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzfzq;
import com.google.android.gms.internal.ads.zzfzr;
import com.google.android.gms.internal.ads.zzhgf;
import com.google.android.gms.internal.ads.zzur;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.annotation.Annotation;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class daw implements zzdgm {

    /* renamed from: a, reason: collision with root package name */
    public Object f13882a;

    /* renamed from: b, reason: collision with root package name */
    public Object f13883b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13884c;

    /* renamed from: d, reason: collision with root package name */
    public Object f13885d;

    /* renamed from: e, reason: collision with root package name */
    public Object f13886e;

    /* renamed from: f, reason: collision with root package name */
    public Object f13887f;

    /* renamed from: g, reason: collision with root package name */
    public Object f13888g;

    public daw(int i) {
        this.f13884c = i;
        switch (i) {
            case 1:
                break;
            default:
                this.f13886e = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
                this.f13887f = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                this.f13882a = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
                this.f13883b = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                this.f13885d = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                this.f13888g = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
                break;
        }
    }

    public daw(Context context, String str) {
        String concat;
        this.f13884c = 10;
        this.f13886e = context.getApplicationContext();
        this.f13887f = str;
        this.f13882a = new TreeMap();
        String packageName = context.getPackageName();
        try {
            concat = packageName + "-" + chk.c(context).c(0, context.getPackageName()).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            agd.f("Unable to get package version name for reporting", e2);
            concat = String.valueOf(packageName).concat("-missing");
        }
        this.f13888g = concat;
    }

    public daw(Drawable.Callback callback, fav favVar) {
        this.f13884c = 6;
        this.f13886e = new gtb(12);
        this.f13887f = new HashMap();
        this.f13882a = new HashMap();
        this.f13888g = ".ttf";
        this.f13885d = favVar;
        if (callback instanceof View) {
            this.f13883b = ((View) callback).getContext().getAssets();
        } else {
            hbp.b("LottieDrawable must be inside of a view for images to work.");
            this.f13883b = null;
        }
    }

    public daw(zzbt zzbtVar) {
        this.f13884c = 9;
        this.f13886e = zzbtVar;
        this.f13887f = zzfzo.zzn();
        this.f13882a = zzfzr.zzd();
    }

    public daw(amr amrVar) {
        this.f13884c = 3;
        bff.p(amrVar, "taskRunner");
        this.f13886e = amrVar;
        this.f13888g = ayg.f11053b;
    }

    public /* synthetic */ daw(bxr bxrVar) {
        this.f13884c = 7;
        this.f13886e = bxrVar;
    }

    public daw(eyd eydVar, eyn eynVar, List list, List list2, Executor executor) {
        this.f13884c = 5;
        this.f13886e = new ConcurrentHashMap();
        this.f13887f = eydVar;
        this.f13882a = eynVar;
        this.f13883b = list;
        this.f13885d = list2;
        this.f13888g = executor;
    }

    public daw(eyn eynVar, String str, dvq dvqVar, sz szVar, Map map) {
        this.f13884c = 4;
        bff.p(eynVar, abn.EXTRA_URL);
        bff.p(str, "method");
        this.f13886e = eynVar;
        this.f13887f = str;
        this.f13882a = dvqVar;
        this.f13883b = szVar;
        this.f13885d = map;
    }

    public /* synthetic */ daw(String str) {
        this.f13884c = 8;
        this.f13887f = str;
    }

    public daw(String str, String str2, Set set) {
        this.f13884c = 2;
        Set unmodifiableSet = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f13886e = unmodifiableSet;
        Map map = Collections.EMPTY_MAP;
        this.f13882a = str;
        this.f13883b = str2;
        this.f13885d = axa.f11013b;
        HashSet hashSet = new HashSet(unmodifiableSet);
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            throw tn.c(it);
        }
        this.f13887f = Collections.unmodifiableSet(hashSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzur h(zzbp zzbpVar, zzfzo zzfzoVar, zzur zzurVar, zzbt zzbtVar) {
        zzbv zzn = zzbpVar.zzn();
        int zze = zzbpVar.zze();
        Object zzf = zzn.zzo() ? null : zzn.zzf(zze);
        int zzc = (zzbpVar.zzw() || zzn.zzo()) ? -1 : zzn.zzd(zze, zzbtVar, false).zzc(zzen.zzs(zzbpVar.zzk()));
        for (int i = 0; i < zzfzoVar.size(); i++) {
            zzur zzurVar2 = (zzur) zzfzoVar.get(i);
            if (n(zzurVar2, zzf, zzbpVar.zzw(), zzbpVar.zzb(), zzbpVar.zzc(), zzc)) {
                return zzurVar2;
            }
        }
        if (zzfzoVar.isEmpty() && zzurVar != null && n(zzurVar, zzf, zzbpVar.zzw(), zzbpVar.zzb(), zzbpVar.zzc(), zzc)) {
            return zzurVar;
        }
        return null;
    }

    public static String i(daw dawVar) {
        String str = (String) edt.f15376a.f15379d.zza(zzbcn.zzjF);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", (Long) dawVar.f13886e);
            jSONObject.put("eventCategory", (String) dawVar.f13887f);
            jSONObject.putOpt("event", (String) dawVar.f13882a);
            jSONObject.putOpt(MediationConstant.KEY_ERROR_CODE, (Integer) dawVar.f13883b);
            jSONObject.putOpt(MediationConstant.KEY_REWARD_TYPE, (String) dawVar.f13885d);
            jSONObject.putOpt("rewardAmount", (Integer) dawVar.f13888g);
        } catch (JSONException unused) {
            agd.b("Could not convert parameters to JSON.");
        }
        return str + "(\"h5adsEvent\"," + jSONObject.toString() + ");";
    }

    public static void j(Drawable drawable, int i, PorterDuff.Mode mode) {
        Drawable mutate = drawable.mutate();
        if (mode == null) {
            mode = cfl.f12788a;
        }
        mutate.setColorFilter(cfl.g(i, mode));
    }

    public static ColorStateList k(Context context, int i) {
        int k = fgt.k(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{fgt.f16762e, fgt.f16758a, fgt.f16763f, fgt.f16761d}, new int[]{fgt.j(context, R.attr.colorButtonNormal), afr.f(k, i), afr.f(k, i), i});
    }

    public static boolean l(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static LayerDrawable m(ezw ezwVar, Context context, int i) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        Drawable s = ezwVar.s(context, R.drawable.abc_star_black_48dp);
        Drawable s2 = ezwVar.s(context, R.drawable.abc_star_half_black_48dp);
        if ((s instanceof BitmapDrawable) && s.getIntrinsicWidth() == dimensionPixelSize && s.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) s;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            s.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            s.draw(canvas);
            bitmapDrawable = new BitmapDrawable(createBitmap);
            bitmapDrawable2 = new BitmapDrawable(createBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((s2 instanceof BitmapDrawable) && s2.getIntrinsicWidth() == dimensionPixelSize && s2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) s2;
        } else {
            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap2);
            s2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            s2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static boolean n(zzur zzurVar, Object obj, boolean z, int i, int i2, int i3) {
        if (zzurVar.zza.equals(obj)) {
            return z ? zzurVar.zzb == i && zzurVar.zzc == i2 : zzurVar.zzb == -1 && zzurVar.zze == i3;
        }
        return false;
    }

    public ColorStateList o(Context context, int i) {
        if (i == R.drawable.abc_edit_text_material) {
            return eyt.bh(context, R.color.abc_tint_edittext);
        }
        if (i == R.drawable.abc_switch_track_mtrl_alpha) {
            return eyt.bh(context, R.color.abc_tint_switch_track);
        }
        if (i != R.drawable.abc_switch_thumb_material) {
            if (i == R.drawable.abc_btn_default_mtrl_shape) {
                return k(context, fgt.k(context, R.attr.colorButtonNormal));
            }
            if (i == R.drawable.abc_btn_borderless_material) {
                return k(context, 0);
            }
            if (i == R.drawable.abc_btn_colored_material) {
                return k(context, fgt.k(context, R.attr.colorAccent));
            }
            if (i == R.drawable.abc_spinner_mtrl_am_alpha || i == R.drawable.abc_spinner_textfield_background_material) {
                return eyt.bh(context, R.color.abc_tint_spinner);
            }
            if (l(i, (int[]) this.f13887f)) {
                return fgt.h(context, R.attr.colorControlNormal);
            }
            if (l(i, (int[]) this.f13885d)) {
                return eyt.bh(context, R.color.abc_tint_default);
            }
            if (l(i, (int[]) this.f13888g)) {
                return eyt.bh(context, R.color.abc_tint_btn_checkable);
            }
            if (i == R.drawable.abc_seekbar_thumb_material) {
                return eyt.bh(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList h = fgt.h(context, R.attr.colorSwitchThumbNormal);
        if (h == null || !h.isStateful()) {
            iArr[0] = fgt.f16762e;
            iArr2[0] = fgt.j(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = fgt.f16759b;
            iArr2[1] = fgt.k(context, R.attr.colorControlActivated);
            iArr[2] = fgt.f16761d;
            iArr2[2] = fgt.k(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = fgt.f16762e;
            iArr[0] = iArr3;
            iArr2[0] = h.getColorForState(iArr3, 0);
            iArr[1] = fgt.f16759b;
            iArr2[1] = fgt.k(context, R.attr.colorControlActivated);
            iArr[2] = fgt.f16761d;
            iArr2[2] = h.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public eya p(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List list = (List) this.f13883b;
        int indexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i = indexOf; i < size; i++) {
            eya c2 = ((gzh) list.get(i)).c(type, annotationArr, this);
            if (c2 != null) {
                return c2;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(((gzh) list.get(indexOf)).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public eeg q(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List list = (List) this.f13885d;
        int indexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i = indexOf; i < size; i++) {
            eeg b2 = ((fmt) list.get(i)).b(type, annotationArr);
            if (b2 != null) {
                return b2;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(((fmt) list.get(indexOf)).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public Object r(Class cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        ArrayDeque arrayDeque = new ArrayDeque(1);
        arrayDeque.add(cls);
        while (!arrayDeque.isEmpty()) {
            Class cls2 = (Class) arrayDeque.removeFirst();
            if (cls2.getTypeParameters().length != 0) {
                StringBuilder sb = new StringBuilder("Type parameters are unsupported on ");
                sb.append(cls2.getName());
                if (cls2 != cls) {
                    sb.append(" which is an interface of ");
                    sb.append(cls.getName());
                }
                throw new IllegalArgumentException(sb.toString());
            }
            Collections.addAll(arrayDeque, cls2.getInterfaces());
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new ber(this, cls));
    }

    public void s(String str, String str2) {
        HashMap hashMap = (HashMap) this.f13888g;
        if (hashMap == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        hashMap.put(str, str2);
    }

    public void t(zzfzq zzfzqVar, zzur zzurVar, zzbv zzbvVar) {
        if (zzurVar == null) {
            return;
        }
        if (zzbvVar.zza(zzurVar.zza) != -1) {
            zzfzqVar.zza(zzurVar, zzbvVar);
            return;
        }
        zzbv zzbvVar2 = (zzbv) ((zzfzr) this.f13882a).get(zzurVar);
        if (zzbvVar2 != null) {
            zzfzqVar.zza(zzurVar, zzbvVar2);
        }
    }

    public String toString() {
        switch (this.f13884c) {
            case 4:
                Map map = (Map) this.f13885d;
                StringBuilder sb = new StringBuilder("Request{method=");
                sb.append((String) this.f13887f);
                sb.append(", url=");
                sb.append((eyn) this.f13886e);
                dvq dvqVar = (dvq) this.f13882a;
                if (dvqVar.size() != 0) {
                    sb.append(", headers=[");
                    int i = 0;
                    for (Object obj : dvqVar) {
                        int i2 = i + 1;
                        if (i < 0) {
                            grj.m();
                            throw null;
                        }
                        ger gerVar = (ger) obj;
                        String str = (String) gerVar.b();
                        String str2 = (String) gerVar.c();
                        if (i > 0) {
                            sb.append(", ");
                        }
                        sb.append(str);
                        sb.append(':');
                        sb.append(str2);
                        i = i2;
                    }
                    sb.append(']');
                }
                if (!map.isEmpty()) {
                    sb.append(", tags=");
                    sb.append(map);
                }
                sb.append('}');
                String sb2 = sb.toString();
                bff.e(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            default:
                return super.toString();
        }
    }

    public void u(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        List list = (List) this.f13883b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((gzh) list.get(i)).getClass();
        }
    }

    public fzn v() {
        fzn fznVar = new fzn(false);
        fznVar.i = new LinkedHashMap();
        fznVar.h = (eyn) this.f13886e;
        fznVar.f17729d = (String) this.f13887f;
        fznVar.f17731f = (sz) this.f13883b;
        Map map = (Map) this.f13885d;
        fznVar.i = map.isEmpty() ? new LinkedHashMap() : new LinkedHashMap(map);
        fznVar.f17730e = ((dvq) this.f13882a).f();
        return fznVar;
    }

    public eya w(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        List list = (List) this.f13883b;
        int indexOf = list.indexOf(null) + 1;
        int size = list.size();
        for (int i = indexOf; i < size; i++) {
            eya b2 = ((gzh) list.get(i)).b(type);
            if (b2 != null) {
                return b2;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n  Tried:");
        int size2 = list.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(((gzh) list.get(indexOf)).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void x(zzbv zzbvVar) {
        zzfzq zzfzqVar = new zzfzq();
        if (((zzfzo) this.f13887f).isEmpty()) {
            t(zzfzqVar, (zzur) this.f13885d, zzbvVar);
            if (!zzfwn.zza((zzur) this.f13888g, (zzur) this.f13885d)) {
                t(zzfzqVar, (zzur) this.f13888g, zzbvVar);
            }
            if (!zzfwn.zza((zzur) this.f13883b, (zzur) this.f13885d) && !zzfwn.zza((zzur) this.f13883b, (zzur) this.f13888g)) {
                t(zzfzqVar, (zzur) this.f13883b, zzbvVar);
            }
        } else {
            for (int i = 0; i < ((zzfzo) this.f13887f).size(); i++) {
                t(zzfzqVar, (zzur) ((zzfzo) this.f13887f).get(i), zzbvVar);
            }
            if (!((zzfzo) this.f13887f).contains((zzur) this.f13883b)) {
                t(zzfzqVar, (zzur) this.f13883b, zzbvVar);
            }
        }
        this.f13882a = zzfzqVar.zzc();
    }

    public gfj y() {
        String str = ((String) this.f13886e) == null ? " transportName" : "";
        if (((csl) this.f13882a) == null) {
            str = str.concat(" encodedPayload");
        }
        if (((Long) this.f13883b) == null) {
            str = awf.c(str, " eventMillis");
        }
        if (((Long) this.f13885d) == null) {
            str = awf.c(str, " uptimeMillis");
        }
        if (((HashMap) this.f13888g) == null) {
            str = awf.c(str, " autoMetadata");
        }
        if (str.isEmpty()) {
            return new gfj((String) this.f13886e, (Integer) this.f13887f, (csl) this.f13882a, ((Long) this.f13883b).longValue(), ((Long) this.f13885d).longValue(), (HashMap) this.f13888g);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public /* synthetic */ zzcvs zza(zzfbr zzfbrVar) {
        this.f13882a = zzfbrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public /* synthetic */ zzcvs zzb(zzfco zzfcoVar) {
        this.f13887f = zzfcoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdgm
    public /* bridge */ /* synthetic */ zzdgm zzc(zzelb zzelbVar) {
        this.f13888g = zzelbVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdgm
    public /* bridge */ /* synthetic */ zzdgm zzd(zzdcf zzdcfVar) {
        this.f13883b = zzdcfVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdgm
    public /* bridge */ /* synthetic */ zzdgm zze(zzcvw zzcvwVar) {
        this.f13885d = zzcvwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public zzdgn zzh() {
        zzhgf.zzc((zzdcf) this.f13883b, zzdcf.class);
        zzhgf.zzc((zzcvw) this.f13885d, zzcvw.class);
        zzhgf.zzc((zzelb) this.f13888g, zzelb.class);
        return new gji((bxr) this.f13886e, new zzcta(), new zzfgu(), new zzcuz(), new zzdta(), (zzdcf) this.f13883b, (zzcvw) this.f13885d, zzejg.zza(), (zzelb) this.f13888g, (zzfco) this.f13887f, (zzfbr) this.f13882a);
    }
}
