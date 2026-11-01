package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import g.tn;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzfvx {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfvv f8214a = new zzfvv("PhoneskyVerificationUtils");

    public static boolean zza(Context context) {
        zzfvv zzfvvVar = f8214a;
        try {
            if (context.getPackageManager().getApplicationInfo("com.android.vending", 0).enabled) {
                try {
                    Signature[] signatureArr = context.getPackageManager().getPackageInfo("com.android.vending", 64).signatures;
                    if (signatureArr == null || (signatureArr.length) == 0) {
                        zzfvvVar.zzd("Play Store package is not signed -- possibly self-built package. Could not verify.", new Object[0]);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        for (Signature signature : signatureArr) {
                            String zza = zzfvw.zza(signature.toByteArray());
                            arrayList.add(zza);
                            if ("8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M".equals(zza)) {
                                return true;
                            }
                            String str = Build.TAGS;
                            if ((str.contains("dev-keys") || str.contains("test-keys")) && "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA".equals(zza)) {
                                return true;
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        Iterator it = arrayList.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                sb.append((CharSequence) it.next());
                                if (!it.hasNext()) {
                                    break;
                                }
                                sb.append((CharSequence) ", ");
                            }
                        }
                        zzfvvVar.zzd(tn.ad("Play Store package certs are not valid. Found these sha256 certs: [", sb.toString(), "]."), new Object[0]);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    zzfvvVar.zzd("Play Store package is not found.", new Object[0]);
                }
            } else {
                zzfvvVar.zzd("Play Store package is disabled.", new Object[0]);
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            zzfvvVar.zzd("Play Store package is not found.", new Object[0]);
        }
        return false;
    }
}
