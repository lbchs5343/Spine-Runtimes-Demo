package com.bykv.vk.openvk.preload.dq;

import java.lang.reflect.Field;
import java.util.Locale;

/* loaded from: classes.dex */
public enum p implements s {
    IDENTITY { // from class: com.bykv.vk.openvk.preload.dq.p.1
        @Override // com.bykv.vk.openvk.preload.dq.s
        public final String dq(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.bykv.vk.openvk.preload.dq.p.2
        @Override // com.bykv.vk.openvk.preload.dq.s
        public final String dq(Field field) {
            return p.dq(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.bykv.vk.openvk.preload.dq.p.3
        @Override // com.bykv.vk.openvk.preload.dq.s
        public final String dq(Field field) {
            return p.dq(p.dq(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.bykv.vk.openvk.preload.dq.p.4
        @Override // com.bykv.vk.openvk.preload.dq.s
        public final String dq(Field field) {
            return p.dq(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.bykv.vk.openvk.preload.dq.p.5
        @Override // com.bykv.vk.openvk.preload.dq.s
        public final String dq(Field field) {
            return p.dq(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS { // from class: com.bykv.vk.openvk.preload.dq.p.6
        @Override // com.bykv.vk.openvk.preload.dq.s
        public final String dq(Field field) {
            return p.dq(field.getName(), ".").toLowerCase(Locale.ENGLISH);
        }
    };

    /* synthetic */ p(byte b2) {
        this();
    }

    public static String dq(String str) {
        int length = str.length() - 1;
        int i = 0;
        while (!Character.isLetter(str.charAt(i)) && i < length) {
            i++;
        }
        char charAt = str.charAt(i);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(charAt);
        if (i == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i) + upperCase + str.substring(i + 1);
    }

    public static String dq(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }
}
