package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import g.dgd;
import g.edt;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzawt extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public static final zzaxu f4562a = new zzaxu();

    /* renamed from: b, reason: collision with root package name */
    public final zzasb f4563b;

    /* renamed from: d, reason: collision with root package name */
    public final Context f4564d;

    /* renamed from: e, reason: collision with root package name */
    public final zzatx f4565e;

    public zzawt(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, Context context, zzars zzarsVar, zzasb zzasbVar, zzatx zzatxVar) {
        super(zzawfVar, "C5H7nTBN4nltmNau+/MNt6CSB0fOzxeNv8MDz6xiw5iQrv1d68C/G+ooekFvBfaF", "+RUwiCqrIcStaeiSXRFEyI1zJGWpibshqhmF48hI+GU=", zzasfVar, i, 27);
        this.f4564d = context;
        this.f4563b = zzasbVar;
        this.f4565e = zzatxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        int i;
        zzatu zzatuVar;
        zzatu zzatuVar2;
        AtomicReference zza = f4562a.zza(this.f4564d.getPackageName());
        synchronized (zza) {
            try {
                zzatu zzatuVar3 = (zzatu) zza.get();
                if (zzatuVar3 != null) {
                    if (!zzawi.zzd(zzatuVar3.zza)) {
                        if (!zzatuVar3.zza.equals("E")) {
                            if (zzatuVar3.zza.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                            }
                            zzatuVar2 = (zzatu) zza.get();
                        }
                    }
                }
                if (zzawi.zzd(null)) {
                    zzawi.zzd(null);
                    i = 3;
                } else {
                    i = 5;
                }
                if (this.f4565e != null) {
                    zzatuVar = h();
                } else {
                    Boolean valueOf = Boolean.valueOf(i == 3 && !this.f4563b.zzd());
                    zzbce zzbceVar = zzbcn.zzcA;
                    edt edtVar = edt.f15376a;
                    Boolean bool = (Boolean) edtVar.f15379d.zza(zzbceVar);
                    String g2 = ((Boolean) edtVar.f15379d.zza(zzbcn.zzcz)).booleanValue() ? g() : null;
                    if (bool.booleanValue() && this.k.zzp() && zzawi.zzd(g2)) {
                        g2 = f();
                    }
                    zzatu zzatuVar4 = new zzatu((String) this.j.invoke(null, this.f4564d, valueOf, g2));
                    if (zzawi.zzd(zzatuVar4.zza) || zzatuVar4.zza.equals("E")) {
                        int i2 = i - 1;
                        if (i2 == 3) {
                            String f2 = f();
                            if (!zzawi.zzd(f2)) {
                                zzatuVar4.zza = f2;
                            }
                        } else if (i2 == 4) {
                            throw null;
                        }
                    }
                    zzatuVar = zzatuVar4;
                }
                zza.set(zzatuVar);
                zzatuVar2 = (zzatu) zza.get();
            } finally {
            }
        }
        synchronized (this.i) {
            if (zzatuVar2 != null) {
                try {
                    this.i.zzx(zzatuVar2.zza);
                    this.i.zzX(zzatuVar2.zzb);
                    this.i.zzZ(zzatuVar2.zzc);
                    this.i.zzi(zzatuVar2.zzd);
                    this.i.zzw(zzatuVar2.zze);
                } finally {
                }
            }
        }
    }

    public final String f() {
        zzawf zzawfVar = this.k;
        try {
            if (zzawfVar.zzl() != null) {
                zzawfVar.zzl().get();
            }
            zzata zzc = zzawfVar.zzc();
            if (zzc == null || !zzc.zzaj()) {
                return null;
            }
            return zzc.zzh();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [com.google.android.gms.internal.ads.zzaxv] */
    public final String g() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            zzbce zzbceVar = zzbcn.zzcB;
            edt edtVar = edt.f15376a;
            byte[] zzf = zzawi.zzf((String) edtVar.f15379d.zza(zzbceVar));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzf)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzawi.zzf((String) edtVar.f15379d.zza(zzbcn.zzcC)))));
            }
            Context context = this.f4564d;
            String packageName = context.getPackageName();
            this.k.zzk();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals("S")) {
                return null;
            }
            final zzgfa zze = zzgfa.zze();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzaxv
                @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                public final void onChecksumsReady(List list) {
                    int type;
                    byte[] value;
                    zzgfa zzgfaVar = zzgfa.this;
                    if (list == null) {
                        zzgfaVar.zzc(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            ApkChecksum ac = dgd.ac(list.get(i));
                            type = ac.getType();
                            if (type == 8) {
                                value = ac.getValue();
                                zzgfaVar.zzc(zzawi.zzb(value));
                                return;
                            }
                        }
                        zzgfaVar.zzc(null);
                    } catch (Throwable unused) {
                        zzgfaVar.zzc(null);
                    }
                }
            });
            return (String) zze.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }

    public final zzatu h() {
        String str;
        zzbce zzbceVar = zzbcn.zzcM;
        edt edtVar = edt.f15376a;
        int intValue = ((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() ? ((Integer) edtVar.f15379d.zza(zzbcn.zzcR)).intValue() : this.f4563b.zza();
        zzatu zzatuVar = new zzatu((String) this.j.invoke(null, this.f4564d, Boolean.FALSE, ""));
        zzatx zzatxVar = this.f4565e;
        if (zzatxVar != null && zzatxVar.zza() != null) {
            try {
                str = (String) zzatxVar.zza().get(intValue, TimeUnit.MILLISECONDS);
            } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            }
            zzatuVar.zza = str;
            return zzatuVar;
        }
        str = "E";
        zzatuVar.zza = str;
        return zzatuVar;
    }
}
