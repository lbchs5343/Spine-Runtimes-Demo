package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class eoc implements ery {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ awr f15884a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15885b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ cvm f15886c;

    public /* synthetic */ eoc(cvm cvmVar, awr awrVar, int i) {
        this.f15885b = i;
        this.f15886c = cvmVar;
        this.f15884a = awrVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0344, code lost:
    
        if (r11 != null) goto L151;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x035d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x02cc  */
    @Override // g.ery
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object h(long j, InputStream inputStream) {
        bvx bvxVar;
        mf mfVar;
        HashMap hashMap;
        Iterator it;
        String str;
        boolean z;
        int i;
        dwy dwyVar;
        String str2;
        String str3;
        bbc bbcVar;
        String d2;
        eos eosVar;
        String e2;
        String str4;
        bpo bpoVar;
        String str5;
        eos eosVar2;
        String str6;
        String g2;
        int i2;
        String substring;
        switch (this.f15885b) {
            case 0:
                cvm cvmVar = this.f15886c;
                awr awrVar = this.f15884a;
                Iterator it2 = cvmVar.f13594e.iterator();
                if (it2.hasNext()) {
                    throw tn.c(it2);
                }
                int i3 = dml.f14432a[awrVar.f10993e.ordinal()];
                if (i3 == 1 || i3 == 2) {
                    synchronized (cvmVar) {
                        try {
                            if (cvmVar.f13591b == null) {
                                cvmVar.f13591b = new bvx(cvmVar.f13592c.j);
                            }
                            bvxVar = cvmVar.f13591b;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    emz ad = bvxVar.ad(inputStream);
                    String str7 = awrVar.f10990b;
                    if (str7 == null) {
                        str7 = awrVar.f10992d;
                    }
                    mfVar = new mf(str7, Collections.EMPTY_LIST, ad, gju.TEXT);
                } else {
                    if (i3 != 3) {
                        if (i3 != 4) {
                            String str8 = awrVar.f10990b;
                            if (str8 == null) {
                                str8 = awrVar.f10992d;
                            }
                            return new mf(str8, Collections.EMPTY_LIST, awrVar, gju.RES_LINK);
                        }
                        String str9 = awrVar.f10990b;
                        if (str9 == null) {
                            str9 = awrVar.f10992d;
                        }
                        String str10 = str9;
                        if (str10.endsWith(".9.png")) {
                            try {
                                new ByteArrayOutputStream().close();
                            } catch (Exception e3) {
                                cvm.f13590a.b(str10, "Failed to decode 9-patch png image, path: {}", e3);
                            }
                        }
                        String str11 = awrVar.f10990b;
                        if (str11 == null) {
                            str11 = awrVar.f10992d;
                        }
                        return new mf(str11, Collections.EMPTY_LIST, awrVar, gju.RES_LINK);
                    }
                    aew g3 = cvmVar.g(awrVar, inputStream);
                    bpo bpoVar2 = new bpo(g3.f10124c, g3.f10127f.g());
                    gyo gyoVar = g3.f10127f;
                    dwg dwgVar = g3.f10125d;
                    dwy dwyVar2 = new dwy(gyoVar, bpoVar2, dwgVar.ah());
                    flc ac = dwgVar.ac();
                    gyo gyoVar2 = g3.f10127f;
                    String str12 = "<?xml version=\"1.0\" encoding=\"utf-8\"?>";
                    ac.o("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
                    String str13 = "<resources>";
                    ac.ae("<resources>");
                    ac.aa();
                    HashSet hashSet = new HashSet();
                    Iterator it3 = gyoVar2.f19010d.iterator();
                    while (it3.hasNext()) {
                        azy azyVar = (azy) it3.next();
                        StringBuilder sb = new StringBuilder();
                        String str14 = azyVar.f11145g;
                        String str15 = azyVar.f11140b;
                        sb.append(str14);
                        sb.append('.');
                        sb.append(str15);
                        if (hashSet.add(sb.toString())) {
                            ac.ae(String.format("<public type=\"%s\" name=\"%s\" id=\"0x%08x\" />", azyVar.f11145g, str15, Integer.valueOf(azyVar.f11142d)));
                        }
                    }
                    ac.ab();
                    ac.ae("</resources>");
                    emz finish = ac.finish();
                    ur urVar = dwgVar.i;
                    HashMap hashMap2 = new HashMap();
                    Iterator it4 = dwyVar2.f14989b.f19010d.iterator();
                    while (it4.hasNext()) {
                        azy azyVar2 = (azy) it4.next();
                        HashSet hashSet2 = dwy.f14988a;
                        String str16 = azyVar2.f11145g;
                        if (!hashSet2.contains(str16)) {
                            StringBuilder sb2 = new StringBuilder("res/values");
                            String str17 = azyVar2.f11141c;
                            if (!str17.isEmpty()) {
                                sb2.append(str17);
                            }
                            sb2.append('/');
                            sb2.append(str16);
                            if (!str16.endsWith("s")) {
                                sb2.append('s');
                            }
                            sb2.append(".xml");
                            String sb3 = sb2.toString();
                            eos eosVar3 = (eos) hashMap2.get(sb3);
                            eos eosVar4 = eosVar3;
                            if (eosVar3 == null) {
                                grs grsVar = new grs(urVar);
                                grsVar.d(str12);
                                grsVar.ae(str13);
                                grsVar.aa();
                                hashMap2.put(sb3, grsVar);
                                eosVar4 = grsVar;
                            }
                            String str18 = "attr";
                            bpo bpoVar3 = dwyVar2.f14990c;
                            String str19 = azyVar2.f11140b;
                            ur urVar2 = urVar;
                            aot aotVar = azyVar2.h;
                            if (aotVar != null) {
                                String e4 = bpoVar3.e(aotVar.f10586b, aotVar.f10587c);
                                String str20 = azyVar2.f11145g;
                                dwy.e(eosVar4, str20, str20, abn.EXTRA_UA_APP_NAME, azyVar2.f11140b, e4);
                                dwyVar = dwyVar2;
                                hashMap = hashMap2;
                                it = it4;
                                str2 = str12;
                                str3 = str13;
                            } else {
                                grs grsVar2 = (grs) eosVar4;
                                grsVar2.ag();
                                hashMap = hashMap2;
                                it = it4;
                                eosVar4.a('<').d(str16).d(" name=\"");
                                String str21 = "item";
                                if (!str16.equals("attr") || azyVar2.f11139a.isEmpty()) {
                                    eosVar4.d(str19);
                                    str = "item";
                                } else {
                                    eosVar4.d(str19);
                                    int i4 = ((bbc) azyVar2.f11139a.get(0)).f11214b.f10587c;
                                    if ((i4 & 65536) != 0) {
                                        str21 = "enum";
                                    } else if ((i4 & 131072) != 0) {
                                        str21 = "flag";
                                    }
                                    String str22 = (i4 & 1) != 0 ? "|reference" : "";
                                    if ((i4 & 2) != 0) {
                                        str = str21;
                                        str22 = str22.concat("|string");
                                    } else {
                                        str = str21;
                                    }
                                    if ((i4 & 4) != 0) {
                                        str22 = awf.c(str22, "|integer");
                                    }
                                    if ((i4 & 8) != 0) {
                                        str22 = awf.c(str22, "|boolean");
                                    }
                                    if ((i4 & 16) != 0) {
                                        str22 = awf.c(str22, "|color");
                                    }
                                    if ((i4 & 32) != 0) {
                                        str22 = awf.c(str22, "|float");
                                    }
                                    if ((i4 & 64) != 0) {
                                        str22 = awf.c(str22, "|dimension");
                                    }
                                    if ((i4 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
                                        str22 = awf.c(str22, "|fraction");
                                    }
                                    if (str22.isEmpty()) {
                                        substring = null;
                                        i2 = 1;
                                    } else {
                                        i2 = 1;
                                        substring = str22.substring(1);
                                    }
                                    if (substring != null) {
                                        eosVar4.d("\" format=\"").d(substring);
                                    }
                                    if (azyVar2.f11139a.size() > i2) {
                                        Iterator it5 = azyVar2.f11139a.iterator();
                                        z = false;
                                        while (it5.hasNext()) {
                                            bbc bbcVar2 = (bbc) it5.next();
                                            Iterator it6 = it5;
                                            boolean z2 = z;
                                            if (bbcVar2.f11213a == emd.ag) {
                                                eosVar4.d("\" min=\"").d(String.valueOf(bbcVar2.f11214b.f10587c));
                                                z = true;
                                            } else {
                                                z = z2;
                                            }
                                            it5 = it6;
                                        }
                                        if (!str16.equals("style") || azyVar2.f11143e != 0) {
                                            eosVar4.d("\" parent=\"");
                                            i = azyVar2.f11143e;
                                            if (i != 0) {
                                                eosVar4.d(bpoVar3.e(1, i));
                                            }
                                        }
                                        eosVar4.d("\">");
                                        if (z) {
                                            grsVar2.aa();
                                            Iterator it7 = azyVar2.f11139a.iterator();
                                            eos eosVar5 = eosVar4;
                                            while (it7.hasNext()) {
                                                bbcVar = (bbc) it7.next();
                                                Iterator it8 = it7;
                                                gql gqlVar = dwyVar2.f14991d;
                                                dwy dwyVar3 = dwyVar2;
                                                d2 = bpoVar3.d(bbcVar.f11213a);
                                                String str23 = str12;
                                                aot aotVar2 = bbcVar.f11214b;
                                                String str24 = str13;
                                                eosVar = eosVar5;
                                                e2 = bpoVar3.e(aotVar2.f10586b, aotVar2.f10587c);
                                                int i5 = aotVar2.f10586b;
                                                if (str16.equals(str18)) {
                                                    str4 = str18;
                                                    bpoVar = bpoVar3;
                                                } else {
                                                    if (i5 == 1 && (e2 == null || e2.equals("0"))) {
                                                        e2 = "@null";
                                                    }
                                                    if (i5 != 16 || d2 == null) {
                                                        str6 = e2;
                                                        str4 = str18;
                                                        bpoVar = bpoVar3;
                                                    } else {
                                                        try {
                                                            str6 = e2;
                                                        } catch (NumberFormatException unused) {
                                                            str6 = e2;
                                                        }
                                                        try {
                                                            str4 = str18;
                                                            bpoVar = bpoVar3;
                                                            try {
                                                                e2 = gqlVar.g(Integer.parseInt(e2), d2.replace("android:", "").replace("attr.", ""));
                                                                break;
                                                            } catch (NumberFormatException unused2) {
                                                                e2 = str6;
                                                                if (i5 == 17) {
                                                                    try {
                                                                        g2 = gqlVar.g(Integer.decode(e2).intValue(), d2.replace("android:", "").replace("attr.", ""));
                                                                        if (g2 != null) {
                                                                        }
                                                                    } catch (NumberFormatException unused3) {
                                                                    }
                                                                }
                                                                switch (str16) {
                                                                    case -475309713:
                                                                        break;
                                                                    case 3004913:
                                                                        break;
                                                                    case 109780401:
                                                                        break;
                                                                }
                                                                str = str5;
                                                                it7 = it8;
                                                                dwyVar2 = dwyVar3;
                                                                str12 = str23;
                                                                str13 = str24;
                                                                str18 = str4;
                                                                bpoVar3 = bpoVar;
                                                                eosVar5 = eosVar2;
                                                            }
                                                        } catch (NumberFormatException unused4) {
                                                            str4 = str18;
                                                            bpoVar = bpoVar3;
                                                            e2 = str6;
                                                            if (i5 == 17) {
                                                            }
                                                            switch (str16) {
                                                                case -475309713:
                                                                    break;
                                                                case 3004913:
                                                                    break;
                                                                case 109780401:
                                                                    break;
                                                            }
                                                            str = str5;
                                                            it7 = it8;
                                                            dwyVar2 = dwyVar3;
                                                            str12 = str23;
                                                            str13 = str24;
                                                            str18 = str4;
                                                            bpoVar3 = bpoVar;
                                                            eosVar5 = eosVar2;
                                                        }
                                                    }
                                                    e2 = str6;
                                                    if (i5 == 17 && d2 != null) {
                                                        g2 = gqlVar.g(Integer.decode(e2).intValue(), d2.replace("android:", "").replace("attr.", ""));
                                                        if (g2 != null) {
                                                            e2 = g2;
                                                        }
                                                    }
                                                }
                                                switch (str16) {
                                                    case "plurals":
                                                        str5 = str;
                                                        eosVar2 = eosVar;
                                                        dwy.e(eosVar2, str16, str5, "quantity", (String) emd.ah.get(Integer.valueOf(bbcVar.f11213a)), e2);
                                                        break;
                                                    case "attr":
                                                        str5 = str;
                                                        eosVar2 = eosVar;
                                                        String str25 = e2;
                                                        if (d2 != null) {
                                                            dwy.e(eosVar2, str16, str5, d2, str25, "");
                                                            break;
                                                        } else {
                                                            break;
                                                        }
                                                    case "style":
                                                        str5 = str;
                                                        eosVar2 = eosVar;
                                                        String str26 = e2;
                                                        if (d2 != null) {
                                                            dwy.e(eosVar2, str16, str5, d2, "", str26);
                                                            break;
                                                        } else {
                                                            break;
                                                        }
                                                    default:
                                                        str5 = str;
                                                        eosVar2 = eosVar;
                                                        dwy.e(eosVar2, str16, str5, null, null, e2);
                                                        break;
                                                }
                                                str = str5;
                                                it7 = it8;
                                                dwyVar2 = dwyVar3;
                                                str12 = str23;
                                                str13 = str24;
                                                str18 = str4;
                                                bpoVar3 = bpoVar;
                                                eosVar5 = eosVar2;
                                            }
                                            dwyVar = dwyVar2;
                                            str2 = str12;
                                            str3 = str13;
                                            grsVar2.ab();
                                        } else {
                                            dwyVar = dwyVar2;
                                            str2 = str12;
                                            str3 = str13;
                                        }
                                        grsVar2.ag();
                                        grsVar2.d("</").d(str16).a('>');
                                    }
                                }
                                z = false;
                                if (!str16.equals("style")) {
                                }
                                eosVar4.d("\" parent=\"");
                                i = azyVar2.f11143e;
                                if (i != 0) {
                                }
                                eosVar4.d("\">");
                                if (z) {
                                }
                                grsVar2.ag();
                                grsVar2.d("</").d(str16).a('>');
                            }
                            hashMap2 = hashMap;
                            it4 = it;
                            urVar = urVar2;
                            dwyVar2 = dwyVar;
                            str12 = str2;
                            str13 = str3;
                        }
                    }
                    HashMap hashMap3 = hashMap2;
                    ArrayList arrayList = new ArrayList(hashMap3.size());
                    for (Map.Entry entry : hashMap3.entrySet()) {
                        String str27 = (String) entry.getKey();
                        grs grsVar3 = (grs) ((eos) entry.getValue());
                        grsVar3.ab();
                        grsVar3.ae("</resources>");
                        arrayList.add(new mf(str27, Collections.EMPTY_LIST, grsVar3.finish(), gju.TEXT));
                    }
                    Collections.sort(arrayList);
                    mfVar = new mf(g3.f10126e, arrayList, finish, gju.RES_TABLE);
                }
                return mfVar;
            default:
                return this.f15886c.g(this.f15884a, inputStream);
        }
    }
}
