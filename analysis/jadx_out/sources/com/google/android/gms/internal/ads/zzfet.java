package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.adq;
import g.fso;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfet {
    public final zzbye zzA;
    public final String zzB;
    public final JSONObject zzC;
    public final JSONObject zzD;
    public final String zzE;
    public final String zzF;
    public final String zzG;
    public final String zzH;
    public final String zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final int zzQ;
    public final int zzR;
    public final boolean zzS;
    public final boolean zzT;
    public final String zzU;
    public final zzffr zzV;
    public final boolean zzW;
    public final boolean zzX;
    public final int zzY;
    public final String zzZ;
    public final List zza;
    public final int zzaa;
    public final String zzab;
    public final boolean zzac;
    public final zzbtm zzad;
    public final adq zzae;
    public final String zzaf;
    public final boolean zzag;
    public final JSONObject zzah;
    public final boolean zzai;
    public final JSONObject zzaj;
    public final boolean zzak;
    public final String zzal;
    public final boolean zzam;
    public final String zzan;
    public final String zzao;
    public final String zzap;
    public final boolean zzaq;
    public final boolean zzar;
    public final int zzas;
    public final String zzat;
    public final List zzau;
    public final boolean zzav;
    public final Map zzaw;
    public final int zzb;
    public final List zzc;
    public final List zzd;
    public final int zze;
    public final List zzf;
    public final List zzg;
    public final List zzh;
    public final List zzi;
    public final String zzj;
    public final String zzk;
    public final zzbwv zzl;
    public final List zzm;
    public final List zzn;
    public final List zzo;
    public final List zzp;
    public final int zzq;
    public final List zzr;
    public final zzfey zzs;
    public final List zzt;
    public final List zzu;
    public final JSONObject zzv;
    public final String zzw;
    public final String zzx;
    public final String zzy;
    public final String zzz;

    public zzfet(JsonReader jsonReader) {
        List list;
        char c2;
        List list2;
        zzbwv zzbwvVar;
        String str;
        List list3;
        List list4 = Collections.EMPTY_LIST;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        zzfzo.zzn();
        zzfzo zzn = zzfzo.zzn();
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        List list5 = list4;
        List list6 = list5;
        List list7 = list6;
        List list8 = list7;
        JSONObject jSONObject7 = jSONObject;
        JSONObject jSONObject8 = jSONObject2;
        JSONObject jSONObject9 = jSONObject3;
        JSONObject jSONObject10 = jSONObject4;
        JSONObject jSONObject11 = jSONObject5;
        JSONObject jSONObject12 = jSONObject6;
        List list9 = zzn;
        HashMap hashMap2 = hashMap;
        String str2 = "";
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        String str12 = str11;
        String str13 = str12;
        String str14 = str13;
        String str15 = str14;
        String str16 = str15;
        String str17 = str16;
        String str18 = str17;
        String str19 = str18;
        String str20 = str19;
        String str21 = str20;
        zzbwv zzbwvVar2 = null;
        zzbye zzbyeVar = null;
        zzbtm zzbtmVar = null;
        adq adqVar = null;
        String str22 = null;
        zzfey zzfeyVar = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i4 = -1;
        int i5 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        int i6 = 0;
        int i7 = -1;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        int i8 = 0;
        boolean z19 = false;
        List list10 = list8;
        List list11 = list10;
        List list12 = list11;
        List list13 = list12;
        List list14 = list13;
        List list15 = list14;
        List list16 = list15;
        List list17 = list16;
        List list18 = list17;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str23 = nextName == null ? str3 : nextName;
            List list19 = list18;
            switch (str23.hashCode()) {
                case -2138196627:
                    list = list17;
                    if (str23.equals("ad_source_instance_name")) {
                        c2 = ';';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1980587809:
                    list = list17;
                    if (str23.equals("debug_signals")) {
                        c2 = 28;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1965512151:
                    list = list17;
                    if (str23.equals("omid_settings")) {
                        c2 = ')';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1871425831:
                    list = list17;
                    if (str23.equals("recursive_server_response_data")) {
                        c2 = 'E';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1843156475:
                    list = list17;
                    if (str23.equals("is_consent")) {
                        c2 = 'G';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1812055556:
                    list = list17;
                    if (str23.equals("play_prewarm_options")) {
                        c2 = '1';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1785028569:
                    list = list17;
                    if (str23.equals("parallel_key")) {
                        c2 = 'I';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1776946669:
                    list = list17;
                    if (str23.equals("ad_source_name")) {
                        c2 = '9';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1662989631:
                    list = list17;
                    if (str23.equals("is_interscroller")) {
                        c2 = '5';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1620470467:
                    list = list17;
                    if (str23.equals("backend_query_id")) {
                        c2 = '/';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1550155393:
                    list = list17;
                    if (str23.equals("nofill_urls")) {
                        c2 = '\r';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1440104884:
                    list = list17;
                    if (str23.equals("is_custom_close_blocked")) {
                        c2 = '#';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1439500848:
                    list = list17;
                    if (str23.equals("orientation")) {
                        c2 = '%';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1428969291:
                    list = list17;
                    if (str23.equals("enable_omid")) {
                        c2 = '\'';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1406227629:
                    list = list17;
                    if (str23.equals("buffer_click_url_as_ready_to_ping")) {
                        c2 = 'C';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1403779768:
                    list = list17;
                    if (str23.equals("showable_impression_type")) {
                        c2 = ',';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1375413093:
                    list = list17;
                    if (str23.equals("ad_cover")) {
                        c2 = '6';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1360811658:
                    list = list17;
                    if (str23.equals("ad_sizes")) {
                        c2 = 19;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1306015996:
                    list = list17;
                    if (str23.equals("adapters")) {
                        c2 = 20;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1303332046:
                    list = list17;
                    if (str23.equals("test_mode_enabled")) {
                        c2 = '\"';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1289032093:
                    list = list17;
                    if (str23.equals("extras")) {
                        c2 = 29;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1240082064:
                    list = list17;
                    if (str23.equals("ad_event_value")) {
                        c2 = '3';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1234181075:
                    list = list17;
                    if (str23.equals("allow_pub_rendered_attribution")) {
                        c2 = 30;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1168140544:
                    list = list17;
                    if (str23.equals("presentation_error_urls")) {
                        c2 = 14;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1152230954:
                    list = list17;
                    if (str23.equals("ad_type")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1146534047:
                    list = list17;
                    if (str23.equals("is_scroll_aware")) {
                        c2 = '+';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1115838944:
                    list = list17;
                    if (str23.equals("fill_urls")) {
                        c2 = '\f';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1081936678:
                    list = list17;
                    if (str23.equals("allocation_id")) {
                        c2 = 21;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1078050970:
                    list = list17;
                    if (str23.equals("video_complete_urls")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1051269058:
                    list = list17;
                    if (str23.equals("active_view")) {
                        c2 = 25;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -982608540:
                    list = list17;
                    if (str23.equals("valid_from_timestamp")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -972056451:
                    list = list17;
                    if (str23.equals("ad_source_instance_id")) {
                        c2 = '<';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -776859333:
                    list = list17;
                    if (str23.equals("click_urls")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -570101180:
                    list = list17;
                    if (str23.equals("late_load_urls")) {
                        c2 = 'J';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -544216775:
                    list = list17;
                    if (str23.equals("safe_browsing")) {
                        c2 = 26;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -437057161:
                    list = list17;
                    if (str23.equals("imp_urls")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -404433734:
                    list = list17;
                    if (str23.equals("rtb_native_required_assets")) {
                        c2 = '>';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -404326515:
                    list = list17;
                    if (str23.equals("render_timeout_ms")) {
                        c2 = '&';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -397704715:
                    list = list17;
                    if (str23.equals("ad_close_time_ms")) {
                        c2 = '-';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -388807511:
                    list = list17;
                    if (str23.equals("content_url")) {
                        c2 = '@';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -369773488:
                    list = list17;
                    if (str23.equals("is_close_button_enabled")) {
                        c2 = '2';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -213449460:
                    list = list17;
                    if (str23.equals("force_disable_hardware_acceleration")) {
                        c2 = 'A';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -213424028:
                    list = list17;
                    if (str23.equals("watermark")) {
                        c2 = '.';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -180214626:
                    list = list17;
                    if (str23.equals("native_required_asset_viewability")) {
                        c2 = '?';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -154616268:
                    list = list17;
                    if (str23.equals("is_offline_ad")) {
                        c2 = '=';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -29338502:
                    list = list17;
                    if (str23.equals("allow_custom_click_gesture")) {
                        c2 = ' ';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3107:
                    list = list17;
                    if (str23.equals("ad")) {
                        c2 = 18;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3355:
                    list = list17;
                    if (str23.equals(TTDownloadField.TT_ID)) {
                        c2 = 23;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3076010:
                    list = list17;
                    if (str23.equals("data")) {
                        c2 = 22;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 37109963:
                    list = list17;
                    if (str23.equals("request_id")) {
                        c2 = 'D';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 63195984:
                    list = list17;
                    if (str23.equals("render_test_label")) {
                        c2 = '!';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 107433883:
                    list = list17;
                    if (str23.equals("qdata")) {
                        c2 = 24;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 230323073:
                    list = list17;
                    if (str23.equals("ad_load_urls")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 418392395:
                    list = list17;
                    if (str23.equals("is_closable_area_disabled")) {
                        c2 = '$';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 542250332:
                    list = list17;
                    if (str23.equals("consent_form_action_identifier")) {
                        c2 = 'H';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 549176928:
                    list = list17;
                    if (str23.equals("presentation_error_timeout_ms")) {
                        c2 = 16;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 597473788:
                    list = list17;
                    if (str23.equals("debug_dialog_string")) {
                        c2 = 27;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 754887508:
                    list = list17;
                    if (str23.equals("container_sizes")) {
                        c2 = 17;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 791122864:
                    list = list17;
                    if (str23.equals("impression_type")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 805095541:
                    list = list17;
                    if (str23.equals("analytics_event_name_to_parameters_map")) {
                        c2 = 'L';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1010584092:
                    list = list17;
                    if (str23.equals("transaction_id")) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1100650276:
                    list = list17;
                    if (str23.equals("rewards")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1141602460:
                    list = list17;
                    if (str23.equals("adapter_response_info_key")) {
                        c2 = '8';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1186014765:
                    list = list17;
                    if (str23.equals("cache_hit_urls")) {
                        c2 = 'B';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1321720943:
                    list = list17;
                    if (str23.equals("allow_pub_owned_ad_view")) {
                        c2 = 31;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1422388341:
                    list = list17;
                    if (str23.equals("is_collapsible")) {
                        c2 = 'F';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1437255331:
                    list = list17;
                    if (str23.equals("ad_source_id")) {
                        c2 = ':';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1637553475:
                    list = list17;
                    if (str23.equals("bid_response")) {
                        c2 = '(';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1638957285:
                    list = list17;
                    if (str23.equals("video_start_urls")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1686319423:
                    list = list17;
                    if (str23.equals("ad_network_class_name")) {
                        c2 = '7';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1688341040:
                    list = list17;
                    if (str23.equals("video_reward_urls")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1799285870:
                    list = list17;
                    if (str23.equals("use_third_party_container_height")) {
                        c2 = '0';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1839650832:
                    list = list17;
                    if (str23.equals("renderers")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1875425491:
                    list = list17;
                    if (str23.equals("is_analytics_logging_enabled")) {
                        c2 = '*';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2068142375:
                    list = list17;
                    if (str23.equals("rule_line_external_id")) {
                        c2 = '4';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2072888499:
                    list = list17;
                    if (str23.equals("manual_tracking_urls")) {
                        c2 = 15;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2075506442:
                    list = list17;
                    if (str23.equals("render_serially")) {
                        c2 = 'K';
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    list = list17;
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    list4 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 1:
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    String nextString = jsonReader.nextString();
                    i = MediationConstant.RIT_TYPE_BANNER.equals(nextString) ? 1 : MediationConstant.RIT_TYPE_INTERSTITIAL.equals(nextString) ? 2 : "native_express".equals(nextString) ? 3 : "native".equals(nextString) ? 4 : "rewarded".equals(nextString) ? 5 : "app_open_ad".equals(nextString) ? 6 : "rewarded_interstitial".equals(nextString) ? 7 : 0;
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
                case 2:
                    list10 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 3:
                    list11 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 4:
                    list12 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 5:
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    int nextInt = jsonReader.nextInt();
                    i2 = (nextInt == 0 || nextInt == 1 || nextInt == 3) ? nextInt : 0;
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
                case 6:
                    list13 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 7:
                    list14 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case '\b':
                    list15 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case '\t':
                    str3 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case '\n':
                    str2 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case 11:
                    list3 = list16;
                    zzbwvVar2 = zzbwv.zza(fso.ac(jsonReader));
                    list16 = list3;
                    list18 = list19;
                    list17 = list;
                    break;
                case '\f':
                    list16 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case '\r':
                    list17 = fso.ad(jsonReader);
                    list16 = list16;
                    list18 = list19;
                    break;
                case 14:
                    list18 = fso.ad(jsonReader);
                    list17 = list;
                    break;
                case 15:
                    list8 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 16:
                    i3 = jsonReader.nextInt();
                    list18 = list19;
                    list17 = list;
                    break;
                case 17:
                    list7 = zzfeu.a(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 18:
                    list3 = list16;
                    zzfeyVar = new zzfey(jsonReader);
                    list16 = list3;
                    list18 = list19;
                    list17 = list;
                    break;
                case 19:
                    list5 = zzfeu.a(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 20:
                    list6 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 21:
                    str4 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case 22:
                    jSONObject7 = fso.at(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 23:
                    str5 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case 24:
                    str6 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case 25:
                    list3 = list16;
                    str7 = fso.at(jsonReader).toString();
                    list16 = list3;
                    list18 = list19;
                    list17 = list;
                    break;
                case 26:
                    list3 = list16;
                    zzbyeVar = zzbye.zza(fso.at(jsonReader));
                    list16 = list3;
                    list18 = list19;
                    list17 = list;
                    break;
                case 27:
                    str8 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case 28:
                    jSONObject8 = fso.at(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 29:
                    jSONObject9 = fso.at(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 30:
                    z = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case 31:
                    z2 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case ' ':
                    z3 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '!':
                    z4 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '\"':
                    z5 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '#':
                    z6 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '$':
                    z7 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '%':
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    String nextString2 = jsonReader.nextString();
                    i4 = "landscape".equalsIgnoreCase(nextString2) ? 6 : "portrait".equalsIgnoreCase(nextString2) ? 7 : -1;
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
                case '&':
                    i5 = jsonReader.nextInt();
                    list18 = list19;
                    list17 = list;
                    break;
                case '\'':
                    z8 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '(':
                    str9 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case ')':
                    jSONObject10 = fso.at(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case '*':
                    z9 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '+':
                    z10 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case ',':
                    i6 = jsonReader.nextInt();
                    list18 = list19;
                    list17 = list;
                    break;
                case '-':
                    i7 = jsonReader.nextInt();
                    list18 = list19;
                    list17 = list;
                    break;
                case '.':
                    str10 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case '/':
                    str11 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case '0':
                    z11 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '1':
                    list3 = list16;
                    zzbtmVar = zzbtm.zza(fso.at(jsonReader));
                    list16 = list3;
                    list18 = list19;
                    list17 = list;
                    break;
                case '2':
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    jsonReader.nextBoolean();
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
                case '3':
                    list3 = list16;
                    adqVar = adq.zza(fso.at(jsonReader));
                    list16 = list3;
                    list18 = list19;
                    list17 = list;
                    break;
                case '4':
                    str12 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case '5':
                    z12 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '6':
                    jSONObject11 = fso.at(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case '7':
                    str13 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case '8':
                    str20 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case '9':
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    if (((Boolean) zzbcn.zzgE.zzj()).booleanValue()) {
                        str14 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
                case ':':
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    if (((Boolean) zzbcn.zzgE.zzj()).booleanValue()) {
                        str15 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
                case ';':
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    if (((Boolean) zzbcn.zzgE.zzj()).booleanValue()) {
                        str16 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
                case '<':
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    if (((Boolean) zzbcn.zzgE.zzj()).booleanValue()) {
                        str17 = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
                case '=':
                    z13 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '>':
                    jSONObject12 = fso.at(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case '?':
                    z14 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case '@':
                    str22 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'A':
                    z15 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'B':
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    fso.ad(jsonReader);
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
                case 'C':
                    z16 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'D':
                    str18 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'E':
                    str19 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'F':
                    z17 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'G':
                    z18 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'H':
                    i8 = jsonReader.nextInt();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'I':
                    str21 = jsonReader.nextString();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'J':
                    list9 = fso.ad(jsonReader);
                    list18 = list19;
                    list17 = list;
                    break;
                case 'K':
                    z19 = jsonReader.nextBoolean();
                    list18 = list19;
                    list17 = list;
                    break;
                case 'L':
                    if (!((Boolean) zzbcn.zzaj.zzj()).booleanValue()) {
                        list2 = list16;
                        zzbwvVar = zzbwvVar2;
                        str = str2;
                        jsonReader.skipValue();
                        list16 = list2;
                        list18 = list19;
                        list17 = list;
                        zzbwvVar2 = zzbwvVar;
                        str2 = str;
                        break;
                    } else {
                        HashMap hashMap3 = new HashMap();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            List list20 = list16;
                            HashMap hashMap4 = new HashMap();
                            jsonReader.beginObject();
                            while (jsonReader.hasNext()) {
                                hashMap4.put(jsonReader.nextName(), jsonReader.nextString());
                                zzbwvVar2 = zzbwvVar2;
                                str2 = str2;
                            }
                            jsonReader.endObject();
                            hashMap3.put(nextName2, hashMap4);
                            list16 = list20;
                        }
                        jsonReader.endObject();
                        hashMap2 = hashMap3;
                        list18 = list19;
                        list17 = list;
                        break;
                    }
                default:
                    jsonReader.skipValue();
                    list2 = list16;
                    zzbwvVar = zzbwvVar2;
                    str = str2;
                    list16 = list2;
                    list18 = list19;
                    list17 = list;
                    zzbwvVar2 = zzbwvVar;
                    str2 = str;
                    break;
            }
        }
        jsonReader.endObject();
        this.zza = list4;
        this.zzb = i;
        this.zzc = list10;
        this.zzd = list11;
        this.zzf = list12;
        this.zze = i2;
        this.zzg = list13;
        this.zzh = list14;
        this.zzi = list15;
        this.zzj = str3;
        this.zzk = str2;
        this.zzl = zzbwvVar2;
        this.zzm = list16;
        this.zzn = list17;
        this.zzo = list18;
        this.zzp = list8;
        this.zzq = i3;
        this.zzr = list7;
        this.zzs = zzfeyVar;
        this.zzt = list6;
        this.zzu = list5;
        this.zzw = str4;
        this.zzv = jSONObject7;
        this.zzx = str5;
        this.zzy = str6;
        this.zzz = str7;
        this.zzA = zzbyeVar;
        this.zzB = str8;
        this.zzC = jSONObject8;
        this.zzD = jSONObject9;
        this.zzJ = z;
        this.zzK = z2;
        this.zzL = z3;
        this.zzM = z4;
        this.zzN = z5;
        this.zzO = z6;
        this.zzP = z7;
        this.zzQ = i4;
        this.zzR = i5;
        this.zzT = z8;
        this.zzU = str9;
        this.zzV = new zzffr(jSONObject10);
        this.zzW = z9;
        this.zzX = z10;
        this.zzY = i6;
        this.zzZ = str10;
        this.zzaa = i7;
        this.zzab = str11;
        this.zzac = z11;
        this.zzad = zzbtmVar;
        this.zzae = adqVar;
        this.zzaf = str12;
        this.zzag = z12;
        this.zzah = jSONObject11;
        this.zzE = str13;
        this.zzF = str14;
        this.zzG = str15;
        this.zzH = str16;
        this.zzI = str17;
        this.zzai = z13;
        this.zzaj = jSONObject12;
        this.zzak = z14;
        this.zzal = str22;
        this.zzam = z15;
        this.zzS = z16;
        this.zzan = str18;
        this.zzao = str19;
        this.zzap = str20;
        this.zzaq = z17;
        this.zzar = z18;
        this.zzas = i8;
        this.zzau = list9;
        this.zzat = str21;
        this.zzav = z19;
        this.zzaw = hashMap2;
    }

    public static String zza(int i) {
        switch (i) {
            case 1:
                return "BANNER";
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }
}
