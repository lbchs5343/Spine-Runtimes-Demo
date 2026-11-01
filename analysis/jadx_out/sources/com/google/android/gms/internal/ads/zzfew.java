package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import g.edt;
import g.fso;
import j$.util.Objects;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfew {
    public final List zza;
    public final String zzb;
    public final int zzc;
    public final int zzd;
    public final String zze;
    public final int zzf;
    public final long zzg;
    public final boolean zzh;
    public final String zzi;
    public final zzfev zzj;
    public final Bundle zzk;
    public final String zzl;
    public final String zzm;
    public final String zzn;
    public final JSONObject zzo;
    public final JSONObject zzp;
    public final String zzq;
    public final int zzr;
    public long zzs;
    public long zzt;

    public zzfew(JsonReader jsonReader) {
        String str;
        Bundle as;
        char c2;
        List list = Collections.EMPTY_LIST;
        Bundle bundle = new Bundle();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jsonReader.beginObject();
        String str2 = "";
        String str3 = "";
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        zzfev zzfevVar = null;
        long j = -1;
        long j2 = 0;
        long j3 = -1;
        int i = 0;
        int i2 = -1;
        int i3 = 1;
        int i4 = 0;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (Objects.equals(nextName, "nofill_urls")) {
                list = fso.ad(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i = jsonReader.nextInt();
            } else if (Objects.equals(nextName, "refresh_load_delay_time_interval")) {
                i2 = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str3 = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str4 = jsonReader.nextString();
            } else if ("is_idless".equals(nextName)) {
                z = jsonReader.nextBoolean();
            } else if ("response_code".equals(nextName)) {
                i4 = jsonReader.nextInt();
            } else if ("latency".equals(nextName)) {
                j2 = jsonReader.nextLong();
            } else {
                zzbce zzbceVar = zzbcn.zzhV;
                str = str2;
                edt edtVar = edt.f15376a;
                long j4 = j;
                zzbcl zzbclVar = edtVar.f15379d;
                zzbcl zzbclVar2 = edtVar.f15379d;
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue() && "public_error".equals(nextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                    zzfev zzfevVar2 = new zzfev();
                    jsonReader.beginObject();
                    String str10 = str;
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        int hashCode = nextName2.hashCode();
                        if (hashCode != -1724546052) {
                            if (hashCode == 3059181 && nextName2.equals(PluginConstants.KEY_ERROR_CODE)) {
                                c2 = 0;
                            }
                            c2 = 65535;
                        } else {
                            if (nextName2.equals("description")) {
                                c2 = 1;
                            }
                            c2 = 65535;
                        }
                        if (c2 == 0) {
                            jsonReader.nextInt();
                        } else if (c2 != 1) {
                            jsonReader.skipValue();
                        } else {
                            str10 = jsonReader.nextString();
                        }
                    }
                    jsonReader.endObject();
                    zzfevVar2.f7853a = str10;
                    zzfevVar = zzfevVar2;
                } else if ("bidding_data".equals(nextName)) {
                    str5 = jsonReader.nextString();
                } else {
                    if (((Boolean) zzbclVar2.zza(zzbcn.zzkb)).booleanValue() && Objects.equals(nextName, "topics_should_record_observation")) {
                        jsonReader.nextBoolean();
                    } else if ("adapter_response_replacement_key".equals(nextName)) {
                        str9 = jsonReader.nextString();
                    } else if ("response_info_extras".equals(nextName)) {
                        if (((Boolean) zzbclVar2.zza(zzbcn.zzgG)).booleanValue()) {
                            try {
                                Bundle as2 = fso.as(fso.at(jsonReader));
                                if (as2 != null) {
                                    bundle = as2;
                                }
                            } catch (IOException | JSONException unused) {
                            } catch (IllegalStateException unused2) {
                                jsonReader.skipValue();
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    } else if ("adRequestPostBody".equals(nextName)) {
                        if (((Boolean) zzbclVar2.zza(zzbcn.zziS)).booleanValue()) {
                            str7 = jsonReader.nextString();
                        } else {
                            jsonReader.skipValue();
                        }
                    } else if (!"adRequestUrl".equals(nextName)) {
                        zzbce zzbceVar2 = zzbcn.zziT;
                        if (((Boolean) zzbclVar2.zza(zzbceVar2)).booleanValue() && Objects.equals(nextName, "adResponseBody")) {
                            str8 = jsonReader.nextString();
                        } else if (((Boolean) zzbclVar2.zza(zzbceVar2)).booleanValue() && Objects.equals(nextName, "adResponseHeaders")) {
                            jSONObject = fso.at(jsonReader);
                        } else {
                            if (Objects.equals(nextName, "max_parallel_renderers")) {
                                i3 = Math.max(1, jsonReader.nextInt());
                            } else if (((Boolean) zzbclVar2.zza(zzbcn.zzja)).booleanValue() && Objects.equals(nextName, "inspector_ad_transaction_extras")) {
                                jSONObject2 = fso.at(jsonReader);
                            } else if (((Boolean) zzbclVar2.zza(zzbcn.zzcj)).booleanValue() && Objects.equals(nextName, "latency_extras")) {
                                try {
                                    as = fso.as(fso.at(jsonReader));
                                } catch (IOException | JSONException unused3) {
                                } catch (IllegalStateException unused4) {
                                }
                                if (as != null) {
                                    double d2 = as.getDouble("start_time");
                                    long j5 = (d2 > 9.223372036854776E18d || d2 < -9.223372036854776E18d) ? -1L : (long) d2;
                                    try {
                                        double d3 = as.getDouble("end_time");
                                        long j6 = (d3 > 9.223372036854776E18d || d3 < -9.223372036854776E18d) ? -1L : (long) d3;
                                        j3 = j5;
                                        j = j6;
                                    } catch (IOException | JSONException unused5) {
                                        j3 = j5;
                                    } catch (IllegalStateException unused6) {
                                        j3 = j5;
                                        jsonReader.skipValue();
                                        j = j4;
                                        str2 = str;
                                    }
                                    str2 = str;
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                            j = j4;
                            str2 = str;
                        }
                    } else if (((Boolean) zzbclVar2.zza(zzbcn.zziS)).booleanValue()) {
                        str6 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                    j = j4;
                    str2 = str;
                }
                j = j4;
                str2 = str;
            }
            str = str2;
            str2 = str;
        }
        long j7 = j;
        jsonReader.endObject();
        this.zza = list;
        this.zzc = i;
        if (((Boolean) zzbet.zzd.zze()).booleanValue()) {
            this.zzd = -1;
        } else {
            zzbdx zzbdxVar = zzbeb.zza;
            if (((Long) zzbdxVar.zze()).longValue() > -1) {
                this.zzd = ((Long) zzbdxVar.zze()).intValue();
            } else {
                this.zzd = i2;
            }
        }
        this.zzb = str3;
        this.zze = str4;
        this.zzf = i4;
        this.zzg = j2;
        this.zzj = zzfevVar;
        this.zzh = z;
        this.zzi = str5;
        this.zzk = bundle;
        this.zzl = str6;
        this.zzm = str7;
        this.zzn = str8;
        this.zzo = jSONObject;
        this.zzp = jSONObject2;
        this.zzq = str9;
        zzbdx zzbdxVar2 = zzber.zza;
        this.zzr = ((Long) zzbdxVar2.zze()).longValue() > 0 ? ((Long) zzbdxVar2.zze()).intValue() : i3;
        this.zzs = j3;
        this.zzt = j7;
    }
}
