package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.google.android.gms.internal.ads.zzbbs;
import g.agd;
import g.akx;
import g.ti;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzedc {

    /* renamed from: a, reason: collision with root package name */
    public final akx f6838a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbbl f6839b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f6840c;

    /* renamed from: d, reason: collision with root package name */
    public final zzech f6841d;

    public zzedc(Context context, akx akxVar, zzbbl zzbblVar, zzech zzechVar) {
        this.f6840c = context;
        this.f6838a = akxVar;
        this.f6839b = zzbblVar;
        this.f6841d = zzechVar;
    }

    public final void zzb(final boolean z) {
        try {
            this.f6841d.zza(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzecz
                @Override // com.google.android.gms.internal.ads.zzfiv
                public final Object zza(Object obj) {
                    zzedc zzedcVar = zzedc.this;
                    boolean z2 = z;
                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                    Context context = zzedcVar.f6840c;
                    akx akxVar = zzedcVar.f6838a;
                    zzbbl zzbblVar = zzedcVar.f6839b;
                    if (z2) {
                        context.deleteDatabase("OfflineUpload.db");
                        return null;
                    }
                    ArrayList arrayList = new ArrayList();
                    Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
                    while (query.moveToNext()) {
                        try {
                            arrayList.add(zzbbs.zzaf.zza.zzx(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
                        } catch (zzgzm e2) {
                            agd.d("Unable to deserialize proto from offline signals database:");
                            agd.d(e2.getMessage());
                        }
                    }
                    query.close();
                    zzbbs.zzaf.zzc zzi = zzbbs.zzaf.zzi();
                    zzi.zzv(context.getPackageName());
                    zzi.zzy(Build.MODEL);
                    zzi.zzA(zzecw.zza(sQLiteDatabase, 0));
                    zzi.zzh(arrayList);
                    zzi.zzE(zzecw.zza(sQLiteDatabase, 1));
                    zzi.zzx(zzecw.zza(sQLiteDatabase, 3));
                    ti.f20033a.v.getClass();
                    zzi.zzF(System.currentTimeMillis());
                    zzi.zzB(zzecw.zzb(sQLiteDatabase, 2));
                    final zzbbs.zzaf zzbr = zzi.zzbr();
                    int size = arrayList.size();
                    long j = 0;
                    for (int i = 0; i < size; i++) {
                        zzbbs.zzaf.zza zzaVar = (zzbbs.zzaf.zza) arrayList.get(i);
                        if (zzaVar.zzk() == zzbbs.zzq.ENUM_TRUE && zzaVar.zze() > j) {
                            j = zzaVar.zze();
                        }
                    }
                    if (j != 0) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", Long.valueOf(j));
                        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
                    }
                    zzbblVar.zzb(new zzbbk() { // from class: com.google.android.gms.internal.ads.zzeda
                        @Override // com.google.android.gms.internal.ads.zzbbk
                        public final void zza(zzbbs.zzt.zza zzaVar2) {
                            zzaVar2.zzW(zzbbs.zzaf.this);
                        }
                    });
                    zzbbs.zzar.zza zzd = zzbbs.zzar.zzd();
                    zzd.zzg(akxVar.buddyApkVersion);
                    zzd.zzi(akxVar.clientJarVersion);
                    zzd.zzh(true != akxVar.isClientJar ? 2 : 0);
                    final zzbbs.zzar zzbr2 = zzd.zzbr();
                    zzbblVar.zzb(new zzbbk() { // from class: com.google.android.gms.internal.ads.zzedb
                        @Override // com.google.android.gms.internal.ads.zzbbk
                        public final void zza(zzbbs.zzt.zza zzaVar2) {
                            zzbbs.zzm.zza zzbM = zzaVar2.zzg().zzbM();
                            zzbM.zzw(zzbbs.zzar.this);
                            zzaVar2.zzK(zzbM);
                        }
                    });
                    zzbblVar.zzc(AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1);
                    zzecw.zze(sQLiteDatabase);
                    return null;
                }
            });
        } catch (Exception e2) {
            agd.d("Error in offline signals database startup: ".concat(String.valueOf(e2.getMessage())));
        }
    }
}
