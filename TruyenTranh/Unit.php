<?php

namespace TruyenTranh;

class Unit
{

        /**
         * Convert normal text to friendly text. Use for url
         * @param string $txt
         * @param int $limiter
         * @return string
         */
        public static function createFriendlyText(string $txt, int $limiter = 50) : string
        {
                $replacements = ['@' => "at", '#' => "hash", '$' => "dollar", '%' => "percentage", '&' => "and", '.' => "dot",
                        '+' => "plus", '-' => "minus", '*' => "multiply", '/' => "devide", '=' => "equal to",
                        '<' => "less than", '<=' => "less than or equal to", '>' => "greater than", '<=' => "greater than or equal to",
                ];

                $txt = strtr(strtolower($txt), $replacements);
                $url_key = preg_replace('#[^0-9a-z]+#i', '-', $txt);
                $limited_key = substr($url_key, 0, $limiter);

                return $limited_key;
        }
}