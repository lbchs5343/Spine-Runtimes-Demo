package g;

import android.animation.Animator;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import androidx.work.impl.WorkDatabase_Impl;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.datatransport.cct.CctBackendFactory;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbqh;
import com.google.android.gms.internal.ads.zzbqt;
import com.google.android.gms.internal.ads.zzbrc;
import com.google.android.gms.internal.ads.zzduy;
import com.google.android.gms.internal.ads.zzdwh;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzgee;
import com.google.common.html.HtmlEscapers;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class gtb implements ayv, dds, bdn, ehn, gon, zzgee, ciq {

    /* renamed from: b, reason: collision with root package name */
    public Object f18712b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18713c;

    /* renamed from: d, reason: collision with root package name */
    public Object f18714d;

    public /* synthetic */ gtb(int i) {
        this.f18713c = i;
    }

    public /* synthetic */ gtb(int i, Object obj) {
        this.f18713c = i;
        this.f18712b = obj;
    }

    public /* synthetic */ gtb(int i, Object obj, Object obj2, boolean z) {
        this.f18713c = i;
        this.f18712b = obj;
        this.f18714d = obj2;
    }

    public gtb(Animator animator) {
        this.f18713c = 6;
        this.f18714d = null;
        this.f18712b = animator;
    }

    public gtb(Context context) {
        fpd fpdVar;
        this.f18713c = 1;
        this.f18714d = new dwn(context, gna.i);
        synchronized (fpd.class) {
            try {
                if (fpd.f17186b == null) {
                    fpd.f17186b = new fpd(context.getApplicationContext());
                }
                fpdVar = fpd.f17186b;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f18712b = fpdVar;
    }

    public gtb(WorkDatabase_Impl workDatabase_Impl) {
        this.f18713c = 0;
        this.f18714d = workDatabase_Impl;
        this.f18712b = new sw(workDatabase_Impl, 0);
    }

    public gtb(frk frkVar) {
        this.f18713c = 10;
        this.f18714d = frkVar;
        this.f18712b = new Object();
    }

    public /* synthetic */ gtb(Object obj, int i, Object obj2) {
        this.f18713c = i;
        this.f18714d = obj;
        this.f18712b = obj2;
    }

    public /* synthetic */ gtb(Object obj, int i, boolean z) {
        this.f18713c = i;
        this.f18714d = obj;
        this.f18712b = null;
    }

    private final void aa(Throwable th) {
    }

    public static String e(int i) {
        asd bh = dyd.bh(i);
        if (bh == null) {
            return "";
        }
        String str = bh.f10742b;
        StringBuilder sb = new StringBuilder("(Android ");
        sb.append(bh.f10741a);
        return awf.ad(sb, TextUtils.isEmpty(str) ? "" : ", ".concat(str), ")");
    }

    public static ArrayList f(amy amyVar, String str) {
        PackageManager packageManager;
        ActivityInfo activityInfo;
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.setPackage(str);
        intent.addCategory("android.intent.category.LAUNCHER");
        synchronized (PackageManager.class) {
            packageManager = amyVar.getPackageManager();
        }
        if (packageManager != null) {
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            if (!acw.u(queryIntentActivities)) {
                ArrayList arrayList = new ArrayList();
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    if (resolveInfo != null && (activityInfo = resolveInfo.activityInfo) != null) {
                        arrayList.add(activityInfo);
                    }
                }
                return arrayList;
            }
        }
        return null;
    }

    public static String g(String str) {
        return str.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;").replace("'", "&#39;");
    }

    public static String h(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        try {
            StringBuilder sb = new StringBuilder(Math.min(20971520, 8192));
            char[] cArr = new char[8192];
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read == -1) {
                    String sb2 = sb.toString();
                    bufferedReader.close();
                    return sb2;
                }
                if (read > 20971520 - sb.length()) {
                    throw new xy();
                }
                sb.append(cArr, 0, read);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String i(String str) {
        try {
            int i = HtmlEscapers.f9101a;
            Object invoke = HtmlEscapers.class.getMethod("htmlEscaper", null).invoke(null, null);
            return invoke == null ? g(str) : (String) invoke.getClass().getMethod("escape", String.class).invoke(invoke, str);
        } catch (ClassNotFoundException unused) {
            return g(str);
        } catch (IllegalAccessException e2) {
            e = e2;
            erl.ai("ViewerPresenter transformHtml", e);
            return g(str);
        } catch (NoSuchMethodException e3) {
            e = e3;
            erl.ai("ViewerPresenter transformHtml", e);
            return g(str);
        } catch (InvocationTargetException e4) {
            e = e4;
            erl.ai("ViewerPresenter transformHtml", e);
            return g(str);
        }
    }

    private final void z(Object obj) {
    }

    @Override // g.ayv
    public chw a() {
        chw a2 = ((dwn) this.f18714d).a();
        dnb dnbVar = new dnb(this);
        a2.getClass();
        bxc bxcVar = fot.f17159a;
        chw chwVar = new chw();
        a2.i.f(new err(bxcVar, dnbVar, chwVar, 1));
        a2.n();
        return chwVar;
    }

    @Override // g.gon
    public void ac(ezz ezzVar) {
        switch (this.f18713c) {
            case 16:
                int i = ezzVar.f16447d;
                zzbpm zzbpmVar = (zzbpm) this.f18714d;
                try {
                    String canonicalName = ((zzbqh) this.f18712b).f4926c.getClass().getCanonicalName();
                    String str = ezzVar.f16448e;
                    agd.c(canonicalName + "failed to loaded mediation ad: ErrorCode = " + i + ". ErrorMessage = " + str + ". ErrorDomain = " + ezzVar.f16449f);
                    zzbpmVar.zzh(ezzVar.h());
                    zzbpmVar.zzi(i, str);
                    zzbpmVar.zzg(i);
                    break;
                } catch (RemoteException e2) {
                    agd.f("", e2);
                }
            case 17:
                try {
                    ((zzbqt) this.f18714d).zzf(ezzVar.h());
                    break;
                } catch (RemoteException e3) {
                    agd.f("", e3);
                    return;
                }
            default:
                try {
                    ((zzbrc) this.f18714d).zzf(ezzVar.h());
                    break;
                } catch (RemoteException e4) {
                    agd.f("", e4);
                    return;
                }
        }
    }

    @Override // g.dds
    public void ai() {
        Activity activity = (Activity) this.f18714d;
        if (activity instanceof elf) {
            elf elfVar = (elf) activity;
            String str = ((ert) this.f18712b).q;
            if (str == null) {
                elfVar.v = null;
            } else {
                elfVar.v = str;
                elfVar.x = true;
            }
        }
        fyt.h(activity, new String[]{"android.permission.ACCESS_COARSE_LOCATION"}, 101);
    }

    public boolean equals(Object obj) {
        switch (this.f18713c) {
            case 12:
                if (!(obj instanceof Pair)) {
                    return false;
                }
                Pair pair = (Pair) obj;
                Object obj2 = pair.first;
                String str = (String) this.f18714d;
                if (obj2 != str && (obj2 == null || !obj2.equals(str))) {
                    return false;
                }
                Object obj3 = pair.second;
                String str2 = (String) this.f18712b;
                return obj3 == str2 || (obj3 != null && obj3.equals(str2));
            default:
                return super.equals(obj);
        }
    }

    public int hashCode() {
        switch (this.f18713c) {
            case 12:
                String str = (String) this.f18714d;
                int hashCode = str == null ? 0 : str.hashCode();
                String str2 = (String) this.f18712b;
                return hashCode ^ (str2 != null ? str2.hashCode() : 0);
            default:
                return super.hashCode();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x08a4  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x08d6  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x08f5  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0914  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x08a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void j(String str, PackageInfo packageInfo, ApplicationInfo applicationInfo) {
        String[] strArr;
        int length;
        Signature[] signatureArr;
        MessageDigest messageDigest;
        MessageDigest messageDigest2;
        MessageDigest messageDigest3;
        int i;
        int i2;
        String str2;
        Signature[] signatureArr2;
        boolean z;
        int i3;
        CertificateFactory certificateFactory;
        X509Certificate x509Certificate;
        ArrayList f2;
        String sb;
        SigningInfo signingInfo;
        String[] strArr2;
        String[] strArr3;
        int length2;
        String[] strArr4;
        String[] strArr5;
        int i4;
        int i5;
        edh edhVar;
        ((ArrayList) this.f18712b).add(new th(applicationInfo.loadLabel(cwz.b((amy) this.f18714d).x), ((amy) this.f18714d).getString(R.string.app_app_name)));
        ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_package_name), str));
        ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_version_name), packageInfo.versionName));
        ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_version_code), Integer.toString(packageInfo.versionCode)));
        if (!hca.g(str)) {
            amy amyVar = (amy) this.f18714d;
            String str3 = packageInfo.packageName;
            String str4 = applicationInfo.name;
            ArrayList arrayList = edh.f15352a;
            synchronized (edh.class) {
                try {
                    if (!edh.f15353b) {
                        Iterator it = edh.f15352a.iterator();
                        while (it.hasNext()) {
                            edh edhVar2 = (edh) it.next();
                            edhVar2.f15356e = amyVar.getString(edhVar2.f15355d);
                        }
                        edh.f15353b = true;
                    }
                } finally {
                }
            }
            ArrayList as = eyt.as(amyVar, str3);
            Iterator it2 = edh.f15352a.iterator();
            loop0: while (it2.hasNext()) {
                edhVar = (edh) it2.next();
                int i6 = edhVar.f15357f;
                if (i6 == 1) {
                    for (String str5 : edhVar.f15354c) {
                        if (str5.equals(str4)) {
                            break loop0;
                        }
                    }
                } else if (i6 == 2) {
                    for (String str6 : edhVar.f15354c) {
                        if ((str3 + "." + str6).equals(str4)) {
                            break loop0;
                        }
                    }
                } else if (i6 != 3) {
                    continue;
                } else {
                    if (acw.u(as)) {
                        break;
                    }
                    for (String str7 : edhVar.f15354c) {
                        if (as.contains(str7)) {
                            break loop0;
                        }
                    }
                }
            }
            edhVar = null;
            ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_p), edhVar != null ? edhVar.f15356e : ((amy) this.f18714d).getString(R.string.app_no_p)));
        }
        ((ArrayList) this.f18712b).add(new edn());
        ((ArrayList) this.f18712b).add(new dpj(((amy) this.f18714d).getString(R.string.app_info_section_platform)));
        if (dyd.bp(24)) {
            ArrayList arrayList2 = (ArrayList) this.f18712b;
            String string = ((amy) this.f18714d).getString(R.string.app_min_sdk_version);
            StringBuilder sb2 = new StringBuilder();
            i4 = applicationInfo.minSdkVersion;
            sb2.append(i4);
            i5 = applicationInfo.minSdkVersion;
            sb2.append(e(i5));
            arrayList2.add(new th(string, sb2.toString()));
        }
        ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_target_sdk_version), applicationInfo.targetSdkVersion + e(applicationInfo.targetSdkVersion)));
        ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_uid), Integer.toString(applicationInfo.uid)));
        ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_system_app), ((amy) this.f18714d).getString((applicationInfo.flags & 1) != 0 ? R.string.yes : R.string.no)));
        ((ArrayList) this.f18712b).add(new edn());
        if (hca.g(str)) {
            q(packageInfo);
            return;
        }
        ((ArrayList) this.f18712b).add(new dpj(((amy) this.f18714d).getString(R.string.app_info_section_files)));
        String str8 = applicationInfo.publicSourceDir;
        if (!TextUtils.isEmpty(str8)) {
            File file = new File(str8);
            if (file.exists() && file.isFile()) {
                ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_apk_size), buj.q(applicationInfo.publicSourceDir, true)));
            }
        }
        ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_apk_path), applicationInfo.publicSourceDir));
        if (dyd.bp(26)) {
            strArr2 = applicationInfo.splitNames;
            if (strArr2 != null && (strArr3 = applicationInfo.splitSourceDirs) != null && (length2 = strArr3.length) > 0) {
                int length3 = strArr3.length;
                strArr4 = applicationInfo.splitNames;
                if (length3 == strArr4.length) {
                    for (int i7 = 0; i7 < length2; i7++) {
                        ArrayList arrayList3 = (ArrayList) this.f18712b;
                        StringBuilder sb3 = new StringBuilder("  ");
                        strArr5 = applicationInfo.splitNames;
                        sb3.append(strArr5[i7]);
                        arrayList3.add(new th(sb3.toString(), applicationInfo.splitSourceDirs[i7]));
                    }
                }
            }
        } else if (dyd.bp(21) && (strArr = applicationInfo.splitSourceDirs) != null && (length = strArr.length) > 0) {
            for (int i8 = 0; i8 < length; i8++) {
                ((ArrayList) this.f18712b).add(new th("", applicationInfo.splitSourceDirs[i8]));
            }
        }
        String str9 = "";
        if (dyd.bp(21)) {
            str9 = (String) awt.ac(applicationInfo, "secondaryNativeLibraryDir", true);
            if (!TextUtils.isEmpty(str9)) {
                str9 = tn.x("\r\n", str9);
            }
        }
        if (str9 == null) {
            str9 = "";
        }
        ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_native_library_path), eyt.bk(applicationInfo.nativeLibraryDir) + str9));
        ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_data_dir), applicationInfo.dataDir));
        ((ArrayList) this.f18712b).add(new edn());
        ((ArrayList) this.f18712b).add(new dpj(((amy) this.f18714d).getString(R.string.app_info_section_signature)));
        String str10 = "";
        amy amyVar2 = (amy) this.f18714d;
        if (Build.VERSION.SDK_INT >= 28) {
            signingInfo = packageInfo.signingInfo;
            signatureArr = signingInfo != null ? signingInfo.getApkContentsSigners() : null;
        } else {
            signatureArr = packageInfo.signatures;
        }
        Signature[] signatureArr3 = signatureArr;
        if (!acw.n(signatureArr3)) {
            try {
                messageDigest = MessageDigest.getInstance("SHA-1");
            } catch (NoSuchAlgorithmException e2) {
                erl.ai("addSignatureInfo get sha1 error", e2);
                messageDigest = null;
            }
            try {
                messageDigest2 = MessageDigest.getInstance("SHA-256");
            } catch (NoSuchAlgorithmException e3) {
                erl.ai("addSignatureInfo get sha256 error", e3);
                messageDigest2 = null;
            }
            try {
                messageDigest3 = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e4) {
                erl.ai("addSignatureInfo get md5 error", e4);
                messageDigest3 = null;
            }
            boolean z2 = signatureArr3.length > 1;
            int length4 = signatureArr3.length;
            int i9 = 0;
            int i10 = 0;
            while (i9 < length4) {
                Signature signature = signatureArr3[i9];
                if (signature == null) {
                    str2 = str10;
                    signatureArr2 = signatureArr3;
                    z = z2;
                    i3 = length4;
                    i2 = i10;
                } else {
                    i = 21;
                    i2 = i10 + 1;
                    byte[] byteArray = signature.toByteArray();
                    str2 = str10;
                    ArrayList arrayList4 = (ArrayList) this.f18712b;
                    signatureArr2 = signatureArr3;
                    z = z2;
                    StringBuilder sb4 = new StringBuilder();
                    i3 = length4;
                    sb4.append(amyVar2.getString(R.string.app_sign_md5));
                    sb4.append(z ? awf.ac(i2, " ") : str2);
                    arrayList4.add(new th(sb4.toString(), messageDigest3 == null ? "MD5 Exception" : hca.d(messageDigest3.digest(byteArray))));
                    ArrayList arrayList5 = (ArrayList) this.f18712b;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(amyVar2.getString(R.string.app_sign_sha1));
                    sb5.append(z ? awf.ac(i2, " ") : str2);
                    arrayList5.add(new th(sb5.toString(), messageDigest == null ? "SHA1 Exception" : hca.d(messageDigest.digest(byteArray))));
                    ArrayList arrayList6 = (ArrayList) this.f18712b;
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append(amyVar2.getString(R.string.app_sign_sha256));
                    sb6.append(z ? awf.ac(i2, " ") : str2);
                    arrayList6.add(new th(sb6.toString(), messageDigest2 == null ? "SHA256 Exception" : hca.d(messageDigest2.digest(byteArray))));
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArray);
                    try {
                        certificateFactory = CertificateFactory.getInstance("X509");
                    } catch (CertificateException e5) {
                        erl.ai("addSignatureInfo get info error", e5);
                    }
                    if (certificateFactory != null && (x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream)) != null) {
                        PublicKey publicKey = x509Certificate.getPublicKey();
                        if (publicKey == null) {
                            ((ArrayList) this.f18712b).add(new th(amyVar2.getString(R.string.app_public_key_type), amyVar2.getString(R.string.unknown)));
                        } else if (publicKey instanceof RSAPublicKey) {
                            RSAPublicKey rSAPublicKey = (RSAPublicKey) publicKey;
                            ((ArrayList) this.f18712b).add(new th(amyVar2.getString(R.string.app_public_key_type), rSAPublicKey.getAlgorithm()));
                            ((ArrayList) this.f18712b).add(new th(amyVar2.getString(R.string.app_public_key_exponent), eyt.bk(rSAPublicKey.getPublicExponent())));
                            BigInteger modulus = rSAPublicKey.getModulus();
                            if (modulus != null) {
                                ((ArrayList) this.f18712b).add(new th(amyVar2.getString(R.string.app_public_key_modulus), modulus.toString(10)));
                                ((ArrayList) this.f18712b).add(new th(amyVar2.getString(R.string.app_public_key_modulus_size), Integer.toString(modulus.bitLength())));
                            }
                        } else if (publicKey instanceof DSAPublicKey) {
                            DSAPublicKey dSAPublicKey = (DSAPublicKey) publicKey;
                            DSAParams params = dSAPublicKey.getParams();
                            ((ArrayList) this.f18712b).add(new th(amyVar2.getString(R.string.app_public_key_type), dSAPublicKey.getAlgorithm()));
                            if (params != null) {
                                ((ArrayList) this.f18712b).add(new th("Public Key P", erl.ay(params.getP())));
                                ((ArrayList) this.f18712b).add(new th("Public Key Q", erl.ay(params.getQ())));
                                ((ArrayList) this.f18712b).add(new th("Public Key G", erl.ay(params.getG())));
                                ((ArrayList) this.f18712b).add(new th("Public Key Y", erl.ay(dSAPublicKey.getY())));
                            }
                        } else if (publicKey instanceof ECPublicKey) {
                            ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
                            ((ArrayList) this.f18712b).add(new th(amyVar2.getString(R.string.app_public_key_type), eCPublicKey.getAlgorithm()));
                            ECParameterSpec params2 = eCPublicKey.getParams();
                            if (params2 != null && params2.getCurve() != null) {
                                ((ArrayList) this.f18712b).add(new th("Elliptic Curve", params2.getCurve().toString()));
                            }
                            ECPoint w = eCPublicKey.getW();
                            if (w != null) {
                                ((ArrayList) this.f18712b).add(new th("EC Point X", erl.ay(w.getAffineX())));
                                ((ArrayList) this.f18712b).add(new th("EC Point Y", erl.ay(w.getAffineY())));
                            }
                        } else {
                            ((ArrayList) this.f18712b).add(new th(amyVar2.getString(R.string.app_public_key_type), amyVar2.getString(R.string.unknown)));
                        }
                        ArrayList arrayList7 = (ArrayList) this.f18712b;
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(amyVar2.getString(R.string.app_sign_owner));
                        sb7.append(z ? " " + i2 : str2);
                        arrayList7.add(new th(sb7.toString(), cux.ak(x509Certificate.getSubjectX500Principal())));
                        ArrayList arrayList8 = (ArrayList) this.f18712b;
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append(amyVar2.getString(R.string.app_sign_issuer));
                        sb8.append(z ? " " + i2 : str2);
                        arrayList8.add(new th(sb8.toString(), cux.ak(x509Certificate.getIssuerX500Principal())));
                        ArrayList arrayList9 = (ArrayList) this.f18712b;
                        StringBuilder sb9 = new StringBuilder();
                        sb9.append(amyVar2.getString(R.string.app_sign_type));
                        sb9.append(z ? " " + i2 : str2);
                        arrayList9.add(new th(sb9.toString(), "X.509"));
                        ArrayList arrayList10 = (ArrayList) this.f18712b;
                        StringBuilder sb10 = new StringBuilder();
                        sb10.append(amyVar2.getString(R.string.app_sign_version));
                        sb10.append(z ? " " + i2 : str2);
                        arrayList10.add(new th(sb10.toString(), cux.ak(Integer.valueOf(x509Certificate.getVersion()))));
                        ArrayList arrayList11 = (ArrayList) this.f18712b;
                        StringBuilder sb11 = new StringBuilder();
                        sb11.append(amyVar2.getString(R.string.app_sign_serial_number));
                        sb11.append(z ? " " + i2 : str2);
                        arrayList11.add(new th(sb11.toString(), x509Certificate.getSerialNumber().toString(16)));
                        ArrayList arrayList12 = (ArrayList) this.f18712b;
                        StringBuilder sb12 = new StringBuilder();
                        sb12.append(amyVar2.getString(R.string.app_sign_algorithm_name));
                        sb12.append(z ? " " + i2 : str2);
                        arrayList12.add(new th(sb12.toString(), cux.ak(x509Certificate.getSigAlgName())));
                        ArrayList arrayList13 = (ArrayList) this.f18712b;
                        StringBuilder sb13 = new StringBuilder();
                        sb13.append(amyVar2.getString(R.string.app_sign_valid_from));
                        sb13.append(z ? " " + i2 : str2);
                        arrayList13.add(new th(sb13.toString(), x509Certificate.getNotBefore().toLocaleString()));
                        ArrayList arrayList14 = (ArrayList) this.f18712b;
                        StringBuilder sb14 = new StringBuilder();
                        sb14.append(amyVar2.getString(R.string.app_sign_valid_until));
                        sb14.append(z ? " " + i2 : str2);
                        arrayList14.add(new th(sb14.toString(), x509Certificate.getNotAfter().toLocaleString()));
                        ((ArrayList) this.f18712b).add(new edn());
                        ((ArrayList) this.f18712b).add(new dpj(((amy) this.f18714d).getString(R.string.app_info_section_runtime)));
                        f2 = f((amy) this.f18714d, str);
                        if (acw.u(f2)) {
                            StringBuilder sb15 = new StringBuilder();
                            Iterator it3 = f2.iterator();
                            while (it3.hasNext()) {
                                ActivityInfo activityInfo = (ActivityInfo) it3.next();
                                if (sb15.length() > 0) {
                                    sb15.append("\r\n");
                                }
                                sb15.append(activityInfo.name);
                            }
                            sb = sb15.toString();
                        } else {
                            sb = null;
                        }
                        if (!TextUtils.isEmpty(sb)) {
                            ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_main_launcher_activity), sb));
                        }
                        if (!TextUtils.isEmpty(applicationInfo.className)) {
                            ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_application_class_name), applicationInfo.className));
                        }
                        if (dyd.bp(i)) {
                            String str11 = (String) awt.ac(applicationInfo, "primaryCpuAbi", true);
                            if (!TextUtils.isEmpty(str11)) {
                                ((ArrayList) this.f18712b).add(new th(((amy) this.f18714d).getString(R.string.app_primary_cpu_abi), str11));
                            }
                        }
                        ((ArrayList) this.f18712b).add(new edn());
                        q(packageInfo);
                    }
                }
                i9++;
                i10 = i2;
                str10 = str2;
                signatureArr3 = signatureArr2;
                z2 = z;
                length4 = i3;
            }
        }
        i = 21;
        ((ArrayList) this.f18712b).add(new edn());
        ((ArrayList) this.f18712b).add(new dpj(((amy) this.f18714d).getString(R.string.app_info_section_runtime)));
        f2 = f((amy) this.f18714d, str);
        if (acw.u(f2)) {
        }
        if (!TextUtils.isEmpty(sb)) {
        }
        if (!TextUtils.isEmpty(applicationInfo.className)) {
        }
        if (dyd.bp(i)) {
        }
        ((ArrayList) this.f18712b).add(new edn());
        q(packageInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void k(String str, ComponentInfo[] componentInfoArr) {
        int i;
        ce ceVar;
        ((ArrayList) this.f18712b).add(new edn());
        ArrayList arrayList = (ArrayList) this.f18712b;
        amy amyVar = (amy) this.f18714d;
        switch (str) {
            case "ReceiverInfo":
                i = R.string.app_info_section_receivers;
                break;
            case "ServiceInfo":
                i = R.string.app_info_section_services;
                break;
            case "ActivityInfo":
                i = R.string.app_info_section_activities;
                break;
            default:
                i = R.string.app_info_section_providers;
                break;
        }
        arrayList.add(new dpj(amyVar.getString(R.string.app_info_section_count, amyVar.getString(i), Integer.valueOf(componentInfoArr == null ? 0 : componentInfoArr.length))));
        if (acw.n(componentInfoArr)) {
            return;
        }
        for (ComponentInfo componentInfo : componentInfoArr) {
            if (componentInfo != null && !TextUtils.isEmpty(componentInfo.name)) {
                ArrayList arrayList2 = (ArrayList) this.f18712b;
                if ("ActivityInfo".equals(str)) {
                    brq brqVar = new brq();
                    brqVar.f12087a = componentInfo;
                    ceVar = brqVar;
                } else {
                    ceVar = new ce(componentInfo.name);
                }
                arrayList2.add(ceVar);
            }
        }
    }

    @Override // g.ehn
    public dpa l(gey geyVar) {
        dpa u = ((dpa) this.f18714d).u();
        u.m((String) this.f18712b, geyVar);
        return u;
    }

    public File m() {
        if (((File) this.f18714d) == null) {
            synchronized (this) {
                try {
                    if (((File) this.f18714d) == null) {
                        rm rmVar = (rm) this.f18712b;
                        rmVar.p();
                        this.f18714d = new File(rmVar.f19913g.getFilesDir(), "PersistedInstallation." + ((rm) this.f18712b).r() + ".json");
                    }
                } finally {
                }
            }
        }
        return (File) this.f18714d;
    }

    public fsy n() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(m());
            while (true) {
                try {
                    int read = fileInputStream.read(bArr, 0, 16384);
                    if (read < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String optString = jSONObject.optString("Fid", null);
        gyk gykVar = gyk.ATTEMPT_MIGRATION;
        int optInt = jSONObject.optInt("Status", gykVar.ordinal());
        String optString2 = jSONObject.optString("AuthToken", null);
        String optString3 = jSONObject.optString("RefreshToken", null);
        long optLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String optString4 = jSONObject.optString("FisError", null);
        int i = fsy.f17354a;
        ph phVar = new ph();
        phVar.f19812d = 0L;
        phVar.j(gykVar);
        phVar.f19810b = 0L;
        phVar.f19811c = optString;
        phVar.j(gyk.values()[optInt]);
        phVar.f19814f = optString2;
        phVar.f19809a = optString3;
        phVar.f19812d = Long.valueOf(optLong);
        phVar.f19810b = Long.valueOf(optLong2);
        phVar.f19815g = optString4;
        return phVar.i();
    }

    public List o(String str) {
        List d2;
        bff.p(str, "workSpecId");
        synchronized (this.f18712b) {
            d2 = ((frk) this.f18714d).d(str);
        }
        return d2;
    }

    public aci p(gxm gxmVar) {
        aci e2;
        bff.p(gxmVar, TTDownloadField.TT_ID);
        synchronized (this.f18712b) {
            e2 = ((frk) this.f18714d).e(gxmVar);
        }
        return e2;
    }

    public void q(PackageInfo packageInfo) {
        ArrayList arrayList = (ArrayList) this.f18712b;
        amy amyVar = (amy) this.f18714d;
        arrayList.add(new dpj(amyVar.getString(R.string.app_info_section_install)));
        ArrayList arrayList2 = (ArrayList) this.f18712b;
        String string = amyVar.getString(R.string.app_install_time);
        long j = packageInfo.firstInstallTime;
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        arrayList2.add(new th(string, dlb.d(j, simpleDateFormat)));
        ((ArrayList) this.f18712b).add(new th(amyVar.getString(R.string.app_last_update_time), dlb.d(packageInfo.lastUpdateTime, simpleDateFormat)));
    }

    public ArrayList r(String str) {
        fcg o = fcg.o(1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
        o.e(1, str);
        WorkDatabase_Impl workDatabase_Impl = (WorkDatabase_Impl) this.f18714d;
        workDatabase_Impl.al();
        Cursor ag = workDatabase_Impl.ag(o);
        try {
            ArrayList arrayList = new ArrayList(ag.getCount());
            while (ag.moveToNext()) {
                arrayList.add(ag.getString(0));
            }
            return arrayList;
        } finally {
            ag.close();
            o.p();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CctBackendFactory s(String str) {
        Bundle bundle;
        Map map;
        PackageManager packageManager;
        ServiceInfo serviceInfo;
        if (((Map) this.f18712b) == null) {
            Context context = (Context) this.f18714d;
            try {
                packageManager = context.getPackageManager();
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME)) != null) {
                bundle = serviceInfo.metaData;
                if (bundle != null) {
                    map = Collections.EMPTY_MAP;
                } else {
                    HashMap hashMap = new HashMap();
                    for (String str2 : bundle.keySet()) {
                        Object obj = bundle.get(str2);
                        if ((obj instanceof String) && str2.startsWith("backend:")) {
                            for (String str3 : ((String) obj).split(",", -1)) {
                                String trim = str3.trim();
                                if (!trim.isEmpty()) {
                                    hashMap.put(trim, str2.substring(8));
                                }
                            }
                        }
                    }
                    map = hashMap;
                }
                this.f18712b = map;
            }
            bundle = null;
            if (bundle != null) {
            }
            this.f18712b = map;
        }
        String str4 = (String) ((Map) this.f18712b).get(str);
        if (str4 == null) {
            return null;
        }
        try {
            return (CctBackendFactory) Class.forName(str4).asSubclass(CctBackendFactory.class).getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException unused2) {
            StringBuilder sb = new StringBuilder("Class ");
            sb.append(str4);
            sb.append(" is not found.");
            return null;
        } catch (IllegalAccessException unused3) {
            StringBuilder sb2 = new StringBuilder("Could not instantiate ");
            sb2.append(str4);
            sb2.append(".");
            return null;
        } catch (InstantiationException unused4) {
            StringBuilder sb3 = new StringBuilder("Could not instantiate ");
            sb3.append(str4);
            sb3.append(".");
            return null;
        } catch (NoSuchMethodException unused5) {
            "Could not instantiate ".concat(str4);
            return null;
        } catch (InvocationTargetException unused6) {
            "Could not instantiate ".concat(str4);
            return null;
        }
    }

    @Override // g.dds
    public void t() {
        Activity activity = (Activity) this.f18714d;
        ert ertVar = (ert) this.f18712b;
        if (ertVar.f16056e) {
            acw.aa(activity);
        }
        fso.y(activity, ertVar.q, "fail_permission_cancel");
    }

    public String toString() {
        switch (this.f18713c) {
            case 5:
                return "DebugInfo{lines=" + ((Map) this.f18714d) + ", localVars=" + ((List) this.f18712b) + '}';
            case 12:
                StringBuilder sb = new StringBuilder("Pair{");
                sb.append(this.f18714d);
                sb.append(" ");
                sb.append(this.f18712b);
                sb.append("}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public void u(fsy fsyVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", fsyVar.f17357d);
            jSONObject.put("Status", fsyVar.f17359f.ordinal());
            jSONObject.put("AuthToken", fsyVar.f17360g);
            jSONObject.put("RefreshToken", fsyVar.f17355b);
            jSONObject.put("TokenCreationEpochInSecs", fsyVar.f17358e);
            jSONObject.put("ExpiresInSecs", fsyVar.f17356c);
            jSONObject.put("FisError", fsyVar.h);
            rm rmVar = (rm) this.f18712b;
            rmVar.p();
            File createTempFile = File.createTempFile("PersistedInstallation", "tmp", rmVar.f19913g.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (createTempFile.renameTo(m())) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    public String v(Uri uri, String str) {
        if (uri != null) {
            try {
                InputStream openInputStream = ((Context) this.f18714d).getContentResolver().openInputStream(uri);
                if (openInputStream != null) {
                    return h(openInputStream);
                }
            } catch (xy e2) {
                throw e2;
            } catch (Exception e3) {
                erl.ai("Failed to read from uri: " + uri, e3);
            }
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            String h = h(fileInputStream);
            fileInputStream.close();
            return h;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public aci w(gxm gxmVar) {
        aci b2;
        synchronized (this.f18712b) {
            b2 = ((frk) this.f18714d).b(gxmVar);
        }
        return b2;
    }

    public boolean x(gxm gxmVar) {
        boolean containsKey;
        synchronized (this.f18712b) {
            containsKey = ((frk) this.f18714d).f17292a.containsKey(gxmVar);
        }
        return containsKey;
    }

    public void y(cgr cgrVar) {
        dbi dbiVar = (dbi) this.f18712b;
        fnq fnqVar = (fnq) this.f18714d;
        int i = cgrVar.f12852b;
        if (i != 0) {
            dbiVar.execute(new dj(fnqVar, i, 1));
        } else {
            dbiVar.execute(new gfh(fnqVar, 11, cgrVar.f12851a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        switch (this.f18713c) {
            case 20:
                break;
            default:
                zzfka zzfkaVar = (zzfka) this.f18712b;
                zzfkaVar.zzh(th);
                zzfkaVar.zzg(false);
                ((zzfkl) this.f18714d).zza(zzfkaVar);
                break;
        }
    }

    @Override // g.ciq
    public boolean zza(String str) {
        gfx gfxVar = esy.f16117a;
        esy esyVar = ti.f20033a.z;
        esy.ah((Context) this.f18714d, (String) this.f18712b, str);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        switch (this.f18713c) {
            case 20:
                ((zzduy) obj).zzf();
                ((zzdwh) this.f18712b).f6603b.zzk((String) this.f18714d);
                break;
        }
    }
}
