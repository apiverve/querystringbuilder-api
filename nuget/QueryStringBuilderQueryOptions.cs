using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.QueryStringBuilder
{
    /// <summary>
    /// Query options for the Query String Builder API
    /// </summary>
    public class QueryStringBuilderQueryOptions
    {
        /// <summary>
        /// JSON object of parameters
        /// </summary>
        [JsonProperty("params")]
        public object Params { get; set; }

        /// <summary>
        /// URL encode parameter values
        /// </summary>
        [JsonProperty("encode")]
        public bool? Encode { get; set; }
    }
}
