package com.google.common.html;

import g.eni;
import g.eqe;
import g.evf;
import g.guz;
import java.util.Collections;
import java.util.HashMap;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class HtmlEscapers {
    private static final eqe HTML_ESCAPER;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9101a = 0;

    static {
        char[][] cArr;
        HashMap hashMap = (HashMap) new evf(8).f16224f;
        hashMap.put('\"', "&quot;");
        hashMap.put('\'', "&#39;");
        hashMap.put('&', "&amp;");
        hashMap.put('<', "&lt;");
        hashMap.put('>', "&gt;");
        hashMap.getClass();
        if (hashMap.isEmpty()) {
            cArr = guz.f18792a;
        } else {
            char[][] cArr2 = new char[((Character) Collections.max(hashMap.keySet())).charValue() + 1][];
            for (Character ch : hashMap.keySet()) {
                cArr2[ch.charValue()] = ((String) hashMap.get(ch)).toCharArray();
            }
            cArr = cArr2;
        }
        eni eniVar = new eni();
        int length = cArr.length;
        HTML_ESCAPER = eniVar;
    }

    private HtmlEscapers() {
    }

    public static eqe htmlEscaper() {
        return HTML_ESCAPER;
    }
}
