package com.bykv.vk.openvk.preload.dq.d;

/* loaded from: classes.dex */
public final class s {
    private static final int dq;

    static {
        String property = System.getProperty("java.version");
        int dq2 = dq(property);
        if (dq2 == -1) {
            dq2 = d(property);
        }
        if (dq2 == -1) {
            dq2 = 6;
        }
        dq = dq2;
    }

    private static int d(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (!Character.isDigit(charAt)) {
                    break;
                }
                sb.append(charAt);
            }
            return Integer.parseInt(sb.toString());
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static boolean d() {
        return dq >= 9;
    }

    public static int dq() {
        return dq;
    }

    private static int dq(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }
}
