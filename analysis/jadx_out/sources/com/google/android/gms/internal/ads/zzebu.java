package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import g.agd;
import g.cro;
import g.dzz;
import g.edt;
import g.esy;
import g.fnq;
import g.ti;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzebu implements zzfiv {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6780a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6781b;

    public zzebu(Context context, String str, zzbwf zzbwfVar, int i) {
        this.f6780a = context;
        this.f6781b = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x0234, code lost:
    
        g.agd.b("Received error HTTP response code: " + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x025b, code lost:
    
        throw new com.google.android.gms.internal.ads.zzdwn(1, "Received error HTTP response code: " + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a9, code lost:
    
        r15.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x027e, code lost:
    
        return r13;
     */
    @Override // com.google.android.gms.internal.ads.zzfiv
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzebt zza(zzebs zzebsVar) throws zzdwn {
        InputStreamReader inputStreamReader;
        BufferedOutputStream bufferedOutputStream;
        zzebu zzebuVar = this;
        String str = zzebuVar.f6781b;
        String str2 = zzebsVar.zza;
        int i = zzebsVar.zzb;
        Map map = zzebsVar.zzc;
        byte[] bArr = zzebsVar.zzd;
        String str3 = zzebsVar.zze;
        ti.f20033a.v.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            zzebt zzebtVar = new zzebt();
            agd.k("SDK version: " + str);
            agd.c("AdRequestServiceImpl: Sending request: " + str2);
            URL url = new URL(str2);
            HashMap hashMap = new HashMap();
            int i2 = 0;
            while (true) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                try {
                    try {
                        ti.f20033a.z.au(zzebuVar.f6780a, str, httpURLConnection, i);
                        for (Map.Entry entry : map.entrySet()) {
                            httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                        if (!TextUtils.isEmpty(str3)) {
                            httpURLConnection.setRequestProperty("Content-Type", str3);
                        }
                        dzz dzzVar = new dzz();
                        try {
                            dzzVar.i(httpURLConnection, bArr);
                        } catch (Throwable th) {
                            agd.f("Network request logging failed.", th);
                            ti.f20033a.f20034ab.zzv(th, "HttpRequestFunction.logAdRequest");
                        }
                        int length = bArr.length;
                        if (length > 0) {
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.setFixedLengthStreamingMode(length);
                            try {
                                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(httpURLConnection.getOutputStream());
                                try {
                                    bufferedOutputStream2.write(bArr);
                                    cro.al(bufferedOutputStream2);
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedOutputStream = bufferedOutputStream2;
                                    cro.al(bufferedOutputStream);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                bufferedOutputStream = null;
                            }
                        }
                        int responseCode = httpURLConnection.getResponseCode();
                        for (Map.Entry<String, List<String>> entry2 : httpURLConnection.getHeaderFields().entrySet()) {
                            String key = entry2.getKey();
                            String str4 = str;
                            List<String> value = entry2.getValue();
                            if (hashMap.containsKey(key)) {
                                ((List) hashMap.get(key)).addAll(value);
                            } else {
                                hashMap.put(key, new ArrayList(value));
                                i = i;
                            }
                            str = str4;
                        }
                        String str5 = str;
                        int i3 = i;
                        dzzVar.j(httpURLConnection, responseCode);
                        zzebtVar.zza = responseCode;
                        zzebtVar.zzb = hashMap;
                        zzebtVar.zzc = "";
                        if (responseCode >= 200 && responseCode < 300) {
                            try {
                                inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
                            } catch (Throwable th4) {
                                th = th4;
                                inputStreamReader = null;
                            }
                            try {
                                ti tiVar = ti.f20033a;
                                esy esyVar = tiVar.z;
                                StringBuilder sb = new StringBuilder(8192);
                                char[] cArr = new char[2048];
                                while (true) {
                                    int read = inputStreamReader.read(cArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    sb.append(cArr, 0, read);
                                }
                                String sb2 = sb.toString();
                                cro.al(inputStreamReader);
                                if (dzz.g() && sb2 != null) {
                                    dzzVar.h("onNetworkResponseBody", new fnq(29, sb2.getBytes()));
                                }
                                zzebtVar.zzc = sb2;
                                if (TextUtils.isEmpty(sb2)) {
                                    if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfu)).booleanValue()) {
                                        throw new zzdwn(3);
                                    }
                                }
                                tiVar.v.getClass();
                                zzebtVar.zzd = SystemClock.elapsedRealtime() - elapsedRealtime;
                            } catch (Throwable th5) {
                                th = th5;
                                cro.al(inputStreamReader);
                                throw th;
                            }
                        } else {
                            if (responseCode < 300 || responseCode >= 400) {
                                break;
                            }
                            String headerField = httpURLConnection.getHeaderField("Location");
                            if (TextUtils.isEmpty(headerField)) {
                                agd.b("No location header to follow redirect.");
                                throw new zzdwn(1, "No location header to follow redirect");
                            }
                            zzbce zzbceVar = zzbcn.zzhw;
                            edt edtVar = edt.f15376a;
                            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                                try {
                                    url = new URI(headerField).toURL();
                                } catch (URISyntaxException e2) {
                                    throw new zzdwn(1, e2.getMessage(), e2);
                                }
                            } else {
                                url = new URL(headerField);
                            }
                            i2++;
                            if (i2 > ((Integer) edtVar.f15379d.zza(zzbcn.zzfa)).intValue()) {
                                agd.b("Too many redirects.");
                                throw new zzdwn(1, "Too many redirects");
                            }
                            httpURLConnection.disconnect();
                            zzebuVar = this;
                            i = i3;
                            str = str5;
                        }
                    } catch (zzdwn e3) {
                        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhW)).booleanValue()) {
                            throw e3;
                        }
                        ti.f20033a.v.getClass();
                        zzebtVar.zzd = SystemClock.elapsedRealtime() - elapsedRealtime;
                    }
                } catch (Throwable th6) {
                    httpURLConnection.disconnect();
                    throw th6;
                }
            }
        } catch (IOException e4) {
            String concat = "Error while connecting to ad server: ".concat(String.valueOf(e4.getMessage()));
            agd.b(concat);
            throw new zzdwn(1, concat, e4);
        }
    }
}
